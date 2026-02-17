import {
    getWorkouts,
    getWorkoutPrivacyOptions,
    patchWorkout
} from "../api/workoutsApi.js";
import {filterUsers, getAllUsers} from "../api/usersApi.js";
import {openPopup} from "../components/popup.js";

function renderDbVisualisation(div, content, patchFunction) {
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

            Object.entries(record).forEach(([field, value]) => {
                const div = document.createElement(`div`);
                div.className = 'filter-item';
                const label = document.createElement('label');
                label.htmlFor = `${field}Edit`;
                label.textContent = `${field}`;
                const element = document.createElement('input');
                element.value = value ?? '';
                element.id = `${field}Edit`;
                element.name = field;
                div.appendChild(label);
                div.append(element);
                editForm.appendChild(div);
            });

            const feedbackDiv = document.createElement('div');
            editForm.appendChild(feedbackDiv);

            async function requestUpdate(feedbackDiv) {
                const payload = { id: record.id };

                const inputs = editForm.querySelectorAll('input');

                inputs.forEach(input => {
                    payload[input.name] = input.value.trim();
                });

                const res = await patchFunction(payload);

                feedbackDiv.replaceChildren(
                    Object.assign(document.createElement('p'), {
                        textContent: res.ok
                            ? 'Update Successful'
                            : 'Update Unsuccessful'
                    })
                );
            }


            openPopup({
                title: 'Edit Row',
                content: editForm,
                buttons: [
                    {
                        label: 'submit',
                        onClick: () => requestUpdate(feedbackDiv)
                    },
                    {
                        label: 'cancel',
                        onClick: close => close()
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
        data.content,
        patchWorkout()
    );

    renderDbVisualisation(
        document.getElementById("usersTableContainer"),
        await getAllUsers(),
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
    renderDbVisualisation(document.getElementById("workoutsTableContainer"), res.content, patchWorkout());
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