import {getAllWorkouts, filterWorkouts, getPublicWorkouts} from "../api/workoutsApi.js";
import { renderWorkouts } from "../components/workoutCard.js";

const container = document.getElementById("workoutsContainer");
const template = document.getElementById("workoutCardTemplate");

const workouts = await getPublicWorkouts();
const elements = {
    name: "workoutName",
    description: "workoutDescription",
    targetZones: "workoutTargetZones",
    expandButton: "workoutExpandButton",
    favouriteButton: "workoutFavouriteButton",
    deleteButton: "workoutDeleteButton"
}
await renderWorkouts(container, template, elements, workouts);

const toggleBtn = document.getElementById('filterToggle');
const sidebar = document.getElementById('filterSidebar');
const backBtn = document.getElementById('filterFormBack');

toggleBtn.addEventListener('click', () => {
    sidebar.classList.add('active');
});

backBtn.addEventListener('click', () => {
    sidebar.classList.remove('active');
});

const filterForm = document.getElementById("workoutFilterForm");

filterForm.addEventListener("submit", (e) => {
    e.preventDefault();
    getFiltered(filterForm);
});

async function getFiltered(filterForm) {
    try {
        const name = filterForm.getElementById("filterWorkoutName").value.trim();
        const description = filterForm.getElementById("filterWorkoutDesc").value.trim();
        const targetZones = Array.from(
            filterForm.querySelectorAll(".zone-checkbox input:checked")
        ).map(cb => cb.value);
        const id = filterForm.getElementById("filterWorkoutId").valueAsNumber;
        const createdAt = filterForm.getElementById("filterWorkoutCreatedAt").getDate();
        const createdBy = filterForm.getElementById("filterWorkoutCreatedBy").value;
        const workoutPrivacy = filterForm.getElementById("filterWorkoutPrivacyStatus").value;


        const params = new URLSearchParams();
        if (name) params.append("name", name);
        if (description) params.append("description", description);
        targetZones.forEach(zone => params.append("targetZones", zone));
        if (id) params.append("id", id);
        if(createdAt) params.append("createdAt", createdAt);
        if(createdBy) params.append("createdBy", createdBy);
        if(workoutPrivacy) params.append("workoutPrivacy", workoutPrivacy);

        const res = await filterWorkouts(params);
        console.log(res);


        await renderWorkouts(container, template, elements, res);
    } catch (err) {
        console.error("Failed to fetch filtered workouts:", err);
    }
}




