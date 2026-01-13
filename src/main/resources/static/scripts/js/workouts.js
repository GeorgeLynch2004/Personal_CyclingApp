async function getAll(){
    const url ="http://localhost:8080/workouts/getAll";

    try {
        const response = await fetch(url);
        const data = await response.json();
        console.log(data);
        renderWorkouts(data);
    } catch (e) {
        console.error("workouts getAll() failed.", e);
    }
}

function renderWorkouts(workouts){
    const container = document.getElementById("workoutsContainer");
    const template = document.getElementById("workoutCardTemplate");

    container.innerHTML = "";

    workouts.forEach(workout => {
       const card = template.content.cloneNode(true);

       card.querySelector(".workout-name").textContent = workout.name;
       card.querySelector(".workout-description").textContent = workout.description;
       card.querySelector(".workout-targetZones").textContent = workout.targetZones;
       card.querySelector(".workout-expandButton").href = `/pages/workouts/${workout.id}`;

       container.appendChild(card);
    });
}

window.addEventListener("DOMContentLoaded", getAll);