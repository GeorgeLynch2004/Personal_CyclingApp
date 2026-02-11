import {getWorkouts} from "../api/workoutsApi.js";
import { renderWorkouts } from "../components/workoutCard.js";

const container = document.getElementById("workoutsContainer");
const template = document.getElementById("workoutCardTemplate");

let currentPage = 0;
let pageSize = 10;
let currentFilters = {privacy:"PUBLIC"};
let totalPages=  0;

const elements = {
    name: "workoutName",
    description: "workoutDescription",
    targetZones: "workoutTargetZones",
    expandButton: "workoutExpandButton",
    favouriteButton: "workoutFavouriteButton",
    deleteButton: "workoutDeleteButton"
}
const data = await getWorkouts({page: currentPage, size: pageSize, privacy: "PUBLIC"});
await loadWorkouts(currentPage);

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

    currentFilters = {
        name: name,
        description: description,
        targetZones: targetZones,
        createdAt: dateEntered,
        createdBy: createdBy,
        privacy: "PUBLIC"
    }

    await loadWorkouts(0);
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
    currentFilters = {privacy: "PUBLIC"};
    await loadWorkouts(0);
}

async function loadWorkouts(page) {
    currentPage = page;

    const data = await getWorkouts({
        ...currentFilters,
        page: currentPage,
        size: pageSize,
        privacy: "PUBLIC"
    });
    totalPages = data.totalPages;
    await renderWorkouts(container, template, elements, data.content);
    renderPagination();
}

function renderPagination() {
    const container = document.getElementById("pagination");
    container.innerHTML = "";

    if (totalPages <= 1) return;

    const windowSize = 5;

    let start = Math.max(0, currentPage - Math.floor(windowSize / 2));
    let end = Math.min(totalPages, start + windowSize);

    if (end - start < windowSize) {
        start = Math.max(0, end - windowSize);
    }

    // ⏮ First + ◀ Prev (only if not on first page)
    if (currentPage > 0) {
        container.appendChild(createButton("«", () => loadWorkouts(0)));
        container.appendChild(createButton("‹", () => loadWorkouts(currentPage - 1)));
    }

    // Page numbers
    for (let i = start; i < end; i++) {
        const btn = createButton(i + 1, () => loadWorkouts(i));
        if (i === currentPage) btn.classList.add("active");
        container.appendChild(btn);
    }

    // ▶ Next + ⏭ Last (only if not on last page)
    if (currentPage < totalPages - 1) {
        container.appendChild(createButton("›", () => loadWorkouts(currentPage + 1)));
        container.appendChild(createButton("»", () => loadWorkouts(totalPages - 1)));
    }
}



function createButton(text, onClick) {
    const btn = document.createElement("button");
    btn.textContent = text;
    btn.onclick = onClick;
    return btn;
}








