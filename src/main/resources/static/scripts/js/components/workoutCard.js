import { createWorkoutGraph } from "./workoutChart.js";
import { convertTargetZonesToString } from "../utils/zones.js";
import { isFavourite, addFavourite, removeFavourite } from "../api/favouritesApi.js";
import {deleteWorkout, getWorkouts} from "../api/workoutsApi.js";
import {
    dislikeWorkout, getDislikes,
    getLikes,
    isDisliked,
    isLiked,
    likeWorkout,
    undislikeWorkout,
    unlikeWorkout
} from "../api/likesApi.js";

export async function renderWorkouts(container, template, elements, workouts) {
    container.querySelectorAll(":not(template)").forEach(el => el.remove());

    for (const workout of workouts) {
        const card = template.content.cloneNode(true);

        card.getElementById(elements.name).textContent = workout.name;
        card.getElementById(elements.description).textContent = workout.description;
        card.getElementById(elements.targetZones).textContent =
            convertTargetZonesToString(workout.targetZones);

        const expandBtn = card.getElementById(elements.expandButton);
        if (expandBtn){
            expandBtn.setAttribute('href', `/pages/workouts/${workout.id}`);

        }

        const favBtn = card.getElementById(elements.favouriteButton);
        if (favBtn){
            updateFavouriteUI(favBtn, await isFavourite(workout.id));

            favBtn.addEventListener("click", async () => {
                const isFav = favBtn.getAttribute("aria-pressed") === "true";
                updateFavouriteUI(favBtn, !isFav);

                const res = isFav
                    ? await removeFavourite(workout.id)
                    : await addFavourite(workout.id);

                if (!res.ok) updateFavouriteUI(favBtn, isFav);
            });
        }

        const likeBtn = card.getElementById("likeWorkoutBtn");
        const dislikeBtn = card.getElementById("dislikeWorkoutButton");

// Initialize button states
        async function initializeButtons() {
            const [liked, disliked, likes, dislikes] = await Promise.all([
                isLiked(workout.id),
                isDisliked(workout.id),
                getLikes(workout.id),
                getDislikes(workout.id)
            ]);

            if (likeBtn) {
                updateLikeUI(likeBtn, liked, `${likes}👍`);
            }
            if (dislikeBtn) {
                updateLikeUI(dislikeBtn, disliked, `${dislikes}👎`);
            }
        }

// Shared handler for both buttons
        async function handleVote(type) {
            const isLike = type === 'like';
            const currentBtn = isLike ? likeBtn : dislikeBtn;
            const otherBtn = isLike ? dislikeBtn : likeBtn;

            const isCurrentlyActive = currentBtn.getAttribute("aria-pressed") === "true";

            if (isCurrentlyActive) {
                // Remove current vote
                await (isLike ? unlikeWorkout(workout.id) : undislikeWorkout(workout.id));
            } else {
                // Check if opposite is active and remove it
                if (otherBtn?.getAttribute("aria-pressed") === "true") {
                    await (isLike ? undislikeWorkout(workout.id) : unlikeWorkout(workout.id));
                    const otherCount = await (isLike ? getDislikes(workout.id) : getLikes(workout.id));
                    updateLikeUI(otherBtn, false, `${otherCount}${isLike ? '👎' : '👍'}`);
                }
                // Add new vote
                await (isLike ? likeWorkout(workout.id) : dislikeWorkout(workout.id));
            }

            // Update current button
            const currentCount = await (isLike ? getLikes(workout.id) : getDislikes(workout.id));
            updateLikeUI(currentBtn, !isCurrentlyActive, `${currentCount}${isLike ? '👍' : '👎'}`);
        }

// Attach event listeners
        if (likeBtn) {
            likeBtn.addEventListener('click', async (e) => {
                e.preventDefault();
                await handleVote('like');
            });
        }

        if (dislikeBtn) {
            dislikeBtn.addEventListener('click', async (e) => {
                e.preventDefault();
                await handleVote('dislike');
            });
        }

        function updateLikeUI(btn, isActive, textDisplay) {
            btn.setAttribute("aria-pressed", isActive);
            btn.textContent = textDisplay;
            btn.classList.toggle('active', isActive);
        }

// Initialize
        await initializeButtons();

        const deleteBtn = card.getElementById(elements.deleteButton);
        if (deleteBtn){
            deleteBtn.addEventListener('click', async () => {
                await deleteWorkout(workout.id);
                await renderWorkouts(container, template, elements, await getWorkouts({createdBy: workout.createdBy}));
            });
        }


        container.appendChild(card);
        createWorkoutGraph(
            container.lastElementChild.querySelector("canvas"),
            workout.structure,
            false
        );
    }
}

function updateFavouriteUI(btn, isFav) {
    btn.setAttribute("aria-pressed", isFav);
    btn.textContent = isFav ? "Unfavourite" : "Favourite";
    if (isFav){
        btn.classList.add('active');
    }else{
        btn.classList.remove('active');
    }

}
