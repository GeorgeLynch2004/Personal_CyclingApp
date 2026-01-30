import {filterWorkouts, getAllWorkouts, getPublicWorkouts} from "../api/workoutsApi.js";
import {getAllUsers} from "../api/usersApi.js";

function renderDbVisualisation(div, content) {
    if (!div || !Array.isArray(content) || content.length === 0) {
        div.innerHTML = '<p>No data available</p>';
        return;
    }

    // Clear existing content
    div.innerHTML = '';

    const table = document.createElement('table');

    const thead = document.createElement('thead');
    const tbody = document.createElement('tbody');

    // Create headers from object keys
    const headers = Object.keys(content[0]);
    const headerRow = document.createElement('tr');

    headers.forEach(key => {
        const th = document.createElement('th');
        th.textContent = key;
        headerRow.appendChild(th);
    });

    thead.appendChild(headerRow);

    // Create rows
    content.forEach(record => {
        const row = document.createElement('tr');

        headers.forEach(key => {
            const td = document.createElement('td');
            td.textContent = record[key] ?? '';
            row.appendChild(td);
        });

        tbody.appendChild(row);
    });

    table.appendChild(thead);
    table.appendChild(tbody);
    div.appendChild(table);
}

renderDbVisualisation(document.getElementById("workoutsTableContainer"),await getAllWorkouts());
renderDbVisualisation(document.getElementById("usersTableContainer"),await getAllUsers());

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

    await getFiltered(form);
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

    renderDbVisualisation(document.getElementById("workoutsTableContainer"),await getPublicWorkouts());
}


async function getFiltered(form) {
    try {
        const params = new URLSearchParams();
        if (form.name) params.append("name", form.name);
        if (form.description) params.append("description", form.description);
        form.targetZones.forEach(zone => params.append("targetZones", form.targetZones));
        if(form.dateEntered) params.append("createdAt", form.dateEntered.toISOString());
        if(form.createdBy) params.append("createdBy", form.createdBy);

        const res = await filterWorkouts(params);

        await renderDbVisualisation(document.getElementById("workoutsTableContainer"), res);
    } catch (err) {
        console.error("Failed to fetch filtered workouts:", err);
    }
}

