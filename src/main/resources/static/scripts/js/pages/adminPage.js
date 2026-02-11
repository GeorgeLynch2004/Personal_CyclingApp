import {
    getWorkouts,
    getWorkoutPrivacyOptions,
    patchWorkout
} from "../api/workoutsApi.js";
import {filterUsers, getAllUsers} from "../api/usersApi.js";
import {openPopup} from "../components/popup.js";

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

        editBtn.addEventListener('click', async (e) => {
            const editForm = document.createElement('form');
            editForm.name = "editRecordForm";
            editForm.id = "editRecordForm";

            // Edit workout privacy form field
            const privDiv = document.createElement('div');
            privDiv.className = "filter-item";
            const privLabel = document.createElement('label');
            privLabel.htmlFor = 'workoutPrivacyEdit';
            privLabel.textContent = 'Workout Privacy';
            const privElement = document.createElement('select');
            const privacyOptions = await getWorkoutPrivacyOptions();
            privacyOptions.forEach(option => {
                const opt = document.createElement("option");
                opt.value = option.value ?? option;
                opt.textContent = option.label ?? option;
                privElement.appendChild(opt);
            });
            privElement.value = record['privacyStatus'];
            privElement.id = 'workoutPrivacyEdit';
            privDiv.appendChild(privLabel);
            privDiv.appendChild(privElement);
            editForm.appendChild(privDiv);

            // Edit workout name form field
            const nameDiv = document.createElement('div');
            nameDiv.className = "filter-item";
            const nameLabel = document.createElement('label');
            nameLabel.htmlFor = 'workoutNameEdit';
            nameLabel.textContent = 'Workout Name';
            const nameElement = document.createElement('input');
            nameElement.value = record['name'];
            nameElement.id = 'workoutNameEdit';
            nameDiv.appendChild(nameLabel);
            nameDiv.appendChild(nameElement);
            editForm.appendChild(nameDiv);

            // Edit workout description form field
            const descDiv = document.createElement('div');
            descDiv.className = "filter-item";
            const descLabel = document.createElement('label');
            descLabel.htmlFor = 'workoutDescEdit';
            descLabel.textContent = 'Workout Description';
            const descElement = document.createElement('input');
            descElement.value = record['description'];
            descElement.id = 'workoutDescEdit';
            descDiv.appendChild(descLabel);
            descDiv.appendChild(descElement);
            editForm.appendChild(descDiv);

            const feedbackDiv = document.createElement('div');
            editForm.appendChild(feedbackDiv);

            async function requestUpdate(payload, feedbackDiv) {
                const res = await patchWorkout({
                    id: record['id'],
                    privacyStatus: document.getElementById("workoutPrivacyEdit").value.trim(),
                    name: document.getElementById("workoutNameEdit").value.trim(),
                    description: document.getElementById("workoutDescEdit").value.trim(),
                });

                while (feedbackDiv.firstChild) {
                    feedbackDiv.removeChild(feedbackDiv.firstChild);
                }

                if (res.ok) {
                    const p = document.createElement('p');
                    p.textContent = "Update Successful";
                    feedbackDiv.appendChild(p);
                } else {
                    const p = document.createElement('p');
                    p.textContent = "Update Unsuccessful";
                    feedbackDiv.appendChild(p);
                }
            }

            openPopup({
                title: 'Edit Row',
                content: editForm,
                buttons: [{
                    label: "submit", onClick: submit => requestUpdate({
                        id: record['id'],
                        privacyStatus: document.getElementById("workoutPrivacyEdit").value.trim(),
                        name: document.getElementById("workoutNameEdit").value.trim(),
                        description: document.getElementById("workoutDescEdit").value.trim(),
                    }, feedbackDiv)
                },
                    {
                        label: "cancel", onClick: close => close()
                    }
                ]
            });
        });
        row.appendChild(editBtn);

        const viewBtn = document.createElement("button");
        viewBtn.textContent = "view";
        viewBtn.name = "viewRowBtn";
        viewBtn.addEventListener('click', ()=>{
            window.location.href = `/pages/workouts/${record.id}`;
        });
        row.appendChild(viewBtn);

        tbody.appendChild(row);
    });

    table.appendChild(thead);
    table.appendChild(tbody);
    div.appendChild(table);
}

document.addEventListener("DOMContentLoaded", async () => {
    const data = await getWorkouts({ page: 0, size: 20 });
    renderDbVisualisation(
        document.getElementById("workoutsTableContainer"),
        data.content
    );

    renderDbVisualisation(
        document.getElementById("usersTableContainer"),
        await getAllUsers()
    );
});

const filterForm = document.getElementById("workoutFilterForm");

const workoutPrivacyOptions = await getWorkoutPrivacyOptions();
const workoutPrivacyElement = document.getElementById("filterWorkoutPrivacy");
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

    const currentPage = document.getElementById("filterWorkoutCurrentPage").valueAsNumber;
    const pageSize = document.getElementById("filterWorkoutPageSize").valueAsNumber;

    const res = await getWorkouts({
        name: name,
        description: description,
        targetZones: targetZones,
        createdAt: dateEntered,
        createdBy: createdBy,
        workoutPrivacy: workoutPrivacy,
        page: currentPage,
        size: pageSize
    });
    renderDbVisualisation(document.getElementById("workoutsTableContainer"), res.content);
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
    document.getElementById("filterWorkoutCurrentPage").value = 0;
    document.getElementById("filterWorkoutPageSize").value = 20;

    // Uncheck all checkboxes
    filterForm.querySelectorAll(".zone-checkbox input").forEach(cb => {
        cb.checked = false;
    });

    const data = await getWorkouts();
    renderDbVisualisation(document.getElementById("workoutsTableContainer"),data.content);
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