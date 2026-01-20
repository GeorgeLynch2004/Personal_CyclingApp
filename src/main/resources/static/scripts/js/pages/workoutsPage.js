import {getAllWorkouts, filterWorkouts, getPublicWorkouts} from "../api/workoutsApi.js";
import { renderWorkouts } from "../components/workoutCard.js";

const container = document.getElementById("workoutsContainer");
const template = document.getElementById("workoutCardTemplate");

const workouts = await getPublicWorkouts();
await renderWorkouts(container, template, workouts);

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
        // 1️⃣ Grab form values
        const name = filterForm.querySelector("#filterWorkoutName").value.trim();
        const description = filterForm.querySelector("#filterWorkoutDesc").value.trim();

        // 2️⃣ Grab checked target zones
        const targetZones = Array.from(
            filterForm.querySelectorAll(".zone-checkbox input:checked")
        ).map(cb => cb.value);

        // 3️⃣ Build query string
        const params = new URLSearchParams();
        if (name) params.append("name", name);
        if (description) params.append("description", description);
        targetZones.forEach(zone => params.append("targetZones", zone));

        const res = await filterWorkouts(params);
        console.log(res);


        await renderWorkouts(container, template, res);
    } catch (err) {
        console.error("Failed to fetch filtered workouts:", err);
    }
}




