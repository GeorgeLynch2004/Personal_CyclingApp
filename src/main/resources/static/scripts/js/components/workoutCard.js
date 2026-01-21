import { createWorkoutGraph } from "./workoutChart.js";
import { convertTargetZonesToString } from "../utils/zones.js";
import { isFavourite, addFavourite, removeFavourite } from "../api/favouritesApi.js";
import {deleteWorkout, getCreatedWorkouts} from "../api/workoutsApi.js";

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
            updateUI(favBtn, await isFavourite(workout.id));

            favBtn.addEventListener("click", async () => {
                const isFav = favBtn.getAttribute("aria-pressed") === "true";
                updateUI(favBtn, !isFav);

                const res = isFav
                    ? await removeFavourite(workout.id)
                    : await addFavourite(workout.id);

                if (!res.ok) updateUI(favBtn, isFav);
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

function updateUI(btn, isFav) {
    btn.setAttribute("aria-pressed", isFav);
    btn.textContent = isFav ? "Unfavourite" : "Favourite";
}
