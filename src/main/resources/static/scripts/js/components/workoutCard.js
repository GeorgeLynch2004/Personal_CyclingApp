import { createWorkoutGraph } from "./workoutChart.js";
import { convertTargetZonesToString } from "../utils/zones.js";
import { isFavourite, addFavourite, removeFavourite } from "../api/favouritesApi.js";

export async function renderWorkouts(container, template, workouts) {
    container.querySelectorAll(":not(template)").forEach(el => el.remove());

    for (const workout of workouts) {
        const card = template.content.cloneNode(true);

        card.getElementById("workoutName").textContent = workout.name;
        card.getElementById("workoutDescription").textContent = workout.description;
        card.getElementById("workoutTargetZones").textContent =
            convertTargetZonesToString(workout.targetZones);

        const expandBtn = card.getElementById("workoutExpandButton");

        expandBtn.setAttribute('href', `/pages/workouts/${workout.id}`);

        const favBtn = card.getElementById("workoutFavouriteButton");

        updateUI(favBtn, await isFavourite(workout.id));

        favBtn.addEventListener("click", async () => {
            const isFav = favBtn.getAttribute("aria-pressed") === "true";
            updateUI(favBtn, !isFav);

            const res = isFav
                ? await removeFavourite(workout.id)
                : await addFavourite(workout.id);

            if (!res.ok) updateUI(favBtn, isFav);
        });

        container.appendChild(card);
        createWorkoutGraph(
            container.lastElementChild.querySelector("canvas"),
            workout.structure
        );
    }
}

function updateUI(btn, isFav) {
    btn.setAttribute("aria-pressed", isFav);
    btn.textContent = isFav ? "Unfavourite" : "Favourite";
}
