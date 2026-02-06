import {filterAllWorkouts, getAllWorkouts, getPublicWorkouts, getWorkoutPrivacyOptions} from "../api/workoutsApi.js";
import {filterUsers, getAllUsers} from "../api/usersApi.js";

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

    const editCol = document.createElement('th');
    editCol.textContent = "options";
    headerRow.appendChild(editCol);

    thead.appendChild(headerRow);

    // Create rows
    content.forEach(record => {
        const row = document.createElement('tr');

        headers.forEach(key => {
            const td = document.createElement('td');
            td.textContent = record[key] ?? '';
            row.appendChild(td);
        });

        const editBtn = document.createElement("button");
        editBtn.textContent = "edit";
        editBtn.name = "editRowBtn";
        editBtn.addEventListener('click', (e) => {
            
        });

        row.appendChild(editBtn);

        tbody.appendChild(row);
    });

    table.appendChild(thead);
    table.appendChild(tbody);
    div.appendChild(table);
}

renderDbVisualisation(document.getElementById("workoutsTableContainer"),await getAllWorkouts());
renderDbVisualisation(document.getElementById("usersTableContainer"),await getAllUsers());

const filterForm = document.getElementById("workoutFilterForm");

const workoutPrivacyOptions = await getWorkoutPrivacyOptions();
const workoutPrivacyElement = document.getElementById("filterWorkoutPrivacy");
console.log(workoutPrivacyOptions);
workoutPrivacyOptions.forEach(option => {
    const opt = document.createElement("option");
    opt.value = option.value ?? option;
    opt.textContent = option.label ?? option;
    workoutPrivacyElement.appendChild(opt);
});

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
    const workoutPrivacy = document.getElementById("filterWorkoutPrivacy").value.trim();

    const form = {
        name,
        description,
        targetZones,
        dateEntered,
        createdBy,
        workoutPrivacy
    };

    const res = await filterAllWorkouts(form);
    renderDbVisualisation(document.getElementById("workoutsTableContainer"), res);
});


const clearFilterBtn = document.getElementById("clearFilterBtn");
clearFilterBtn.addEventListener('click', async (e) => {
    e.preventDefault();

    await clearWorkoutFilters();
});

async function clearWorkoutFilters() {
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

const userFilterForm = document.getElementById("usersFilterForm");

userFilterForm.addEventListener("submit", async (e) => {
    e.preventDefault();

    const id = document.getElementById("filterUserId").valueAsNumber;
    const name = document.getElementById("filterUserName").value.trim();
    const email = document.getElementById("filterUserEmail").value.trim();
    const role = document.getElementById("filterUserRole").value.trim();

    const form = {
        id,
        name,
        email,
        role
    }

    const res = await filterUsers(form);
    renderDbVisualisation(document.getElementById("usersTableContainer"),res);
});

const userFilterClearBtn = document.getElementById("clearUserFilterBtn");

userFilterClearBtn.addEventListener("click", async (e) =>{
    e.preventDefault();

    await clearUserFilters();
});

async function clearUserFilters(){
    const id = document.getElementById("filterUserId").value = "";
    const name = document.getElementById("filterUserName").value = "";
    const email = document.getElementById("filterUserEmail").value = "";
    const role = document.getElementById("filterUserRole").value = "";

    renderDbVisualisation(document.getElementById("usersTableContainer"),await getAllUsers());
}