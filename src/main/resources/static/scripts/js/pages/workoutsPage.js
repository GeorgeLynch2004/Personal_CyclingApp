import {getAllWorkouts, getPublicWorkouts, filterPublicWorkouts} from "../api/workoutsApi.js";
import { renderWorkouts } from "../components/workoutCard.js";

const container = document.getElementById("workoutsContainer");
const template = document.getElementById("workoutCardTemplate");

const elements = {
    name: "workoutName",
    description: "workoutDescription",
    targetZones: "workoutTargetZones",
    expandButton: "workoutExpandButton",
    favouriteButton: "workoutFavouriteButton",
    deleteButton: "workoutDeleteButton"
}
await renderWorkouts(container, template, elements, await getPublicWorkouts());

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

filterForm.addEventListener("submit", async (e) => {
    e.preventDefault();

    const name = document.getElementById("filterWorkoutName").value.trim();
    const description = document.getElementById("filterWorkoutDesc").value.trim();

    const targetZones = Array.from(
        filterForm.querySelectorAll(".zone-checkbox input:checked")
    ).map(cb => cb.value);

    const createdAt = document.getElementById("filterWorkoutCreatedAt").value;
    const dateEntered = createdAt ? new Date(createdAt) : null;

    const createdBy = document.getElementById("filterWorkoutCreatedBy").value.trim();

    const form = {
        name,
        description,
        targetZones,
        dateEntered,
        createdBy
    };

    const res = await filterPublicWorkouts(form);
    await renderWorkouts(container, template, elements, res);
});


const clearFilterBtn = document.getElementById("clearFilterBtn");
clearFilterBtn.addEventListener('click', async (e) => {
    e.preventDefault();

    await clearFilters();
});

async function clearFilters() {
    // Clear text inputs
    document.getElementById("filterWorkoutName").value = "";
    document.getElementById("filterWorkoutDesc").value = "";
    document.getElementById("filterWorkoutCreatedAt").value = "";
    document.getElementById("filterWorkoutCreatedBy").value = "";

    // Uncheck all checkboxes
    filterForm.querySelectorAll(".zone-checkbox input").forEach(cb => {
        cb.checked = false;
    });

    await renderWorkouts(container, template, elements, await getPublicWorkouts());
}





