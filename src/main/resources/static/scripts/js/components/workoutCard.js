import { createWorkoutGraph } from "./workoutChart.js";
import { convertTargetZonesToString } from "../utils/zones.js";
import { isFavourite, addFavourite, removeFavourite } from "../api/favouritesApi.js";
import {deleteWorkout, getCreatedWorkouts} from "../api/workoutsApi.js";
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

        if (likeBtn){
            updateLikeUI(likeBtn, await isLiked(workout.id), await getLikes(workout.id) + "👍");
            likeBtn.addEventListener('click', async (e) => {
                e.preventDefault();
                const liked = likeBtn.getAttribute("aria-pressed") === "true";
                const res = liked ? await unlikeWorkout(workout.id) : await likeWorkout(workout.id);
                const likesDisplay = await getLikes(workout.id);
                updateLikeUI(likeBtn, !liked, likesDisplay + "👍");
            });
        }

        const dislikeBtn = card.getElementById("dislikeWorkoutButton");

        if (dislikeBtn){
            updateLikeUI(dislikeBtn, await isDisliked(workout.id), await getDislikes(workout.id) + "👎");
            dislikeBtn.addEventListener('click', async (e) => {
                e.preventDefault();
                const disliked = dislikeBtn.getAttribute("aria-pressed") === "true";
                const res = disliked ? await undislikeWorkout(workout.id) : await dislikeWorkout(workout.id);
                const dislikesDisplay = await getDislikes(workout.id);
                updateLikeUI(dislikeBtn, !disliked, dislikesDisplay + "👎");
                //This is the logic problem, the likes arent updating on teh database before it updates ui so it wont show the new like amount, better off doing it client side adding or minusing -1 so that it always remains consistent and refreshing the page removes that logic entirely and updates via database



            });
        }

        const deleteBtn = card.getElementById(elements.deleteButton);
        if (deleteBtn){
            deleteBtn.addEventListener('click', async () => {
                await deleteWorkout(workout.id);
                await renderWorkouts(container, template, elements, await getCreatedWorkouts());
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
    }

}

function updateLikeUI(btn, isActive, textDisplay){
    btn.setAttribute("aria-pressed", isActive);
    btn.textContent = textDisplay;
    if (isActive){
        btn.classList.add('active');
    }
    else{
        btn.classList.remove('active');
    }

}
