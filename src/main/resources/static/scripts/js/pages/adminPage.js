import {getAllWorkouts} from "../api/workoutsApi.js";
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