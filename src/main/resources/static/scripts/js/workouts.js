async function getAll(){
    const url ="http://localhost:8080/workouts/getAll";

    try {
        const response = await fetch(url);
        const data = await response.json();
        console.log(data);
        await renderWorkouts(container, template, data);
    } catch (e) {
        console.error("workouts getAll() failed.", e);
    }
}
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

        const url = `/workouts/filter?${params.toString()}`;

        // 4️⃣ Fetch filtered workouts
        const response = await fetch(url);
        if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
        const data = await response.json();

        console.log("Filtered workouts:", data);

        // 5️⃣ Render the workouts using existing function
        renderWorkouts(container, template,data);

    } catch (err) {
        console.error("Failed to fetch filtered workouts:", err);
    }
}
async function renderWorkouts(container, template, workouts) {

    // 1️⃣ Remove all rendered workout cards, but keep the template
    Array.from(container.children).forEach(child => {
        if (child.tagName.toLowerCase() !== 'template') {
            container.removeChild(child);
        }
    });

    // 2️⃣ Render each workout
    workouts.forEach(workout => {
        const card = template.content.cloneNode(true);

        card.querySelector(".workout-name").textContent = workout.name;
        card.querySelector(".workout-description").textContent = workout.description;
        card.querySelector(".workout-targetZones").textContent = convertTargetZonesToString(workout.targetZones);
        card.querySelector(".workout-expandButton").href = `/pages/workouts/${workout.id}`;
        const favouriteBtn = card.getElementById("workoutFavouriteButton");

        // Initial state
        (async () => {
            const fav = await isFavourite(workout.id);
            updateUI(favouriteBtn, fav);
        })();

        // Toggle handler
        favouriteBtn.addEventListener("click", async () => {
            const isFav = favouriteBtn.getAttribute("aria-pressed") === "true";



            // optimistic UI
            updateUI(favouriteBtn, !isFav);

            const res = isFav
                ? await removeFavourite(workout.id)
                : await addFavourite(workout.id);

            if (!res.ok) {
                // revert on failure
                updateUI(favouriteBtn, isFav);
                alert("Could not update favourite");
            }
        });


        // Append the cloned card to the container
        container.appendChild(card);

        // Initialize the chart for this card
        const canvas = container.lastElementChild.querySelector(".workout-graph canvas");
        createWorkoutGraph(canvas, workout.structure);
    });
}
function createWorkoutGraph(canvas, structure) {
    const { points, midpoints } = buildPowerSeries(structure);

    new Chart(canvas.getContext("2d"), {
        type: "line",
        data: {
            datasets: [{
                data: points,
                stepped: true,
                fill: true,
                pointRadius: 0,
                borderWidth: 2,
                segment: {
                    borderColor: ctx =>
                        zoneColor(ctx.p0.parsed.y),
                    backgroundColor: ctx =>
                        zoneColor(ctx.p0.parsed.y, 0.3)
                }
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,

            interaction: {
                mode: "index",
                intersect: false
            },

            scales: {
                x: {
                    type: "linear",
                    afterBuildTicks: axis => {
                        axis.ticks = midpoints.map(m => ({
                            value: m.value,
                            label: m.label
                        }));
                    },
                    ticks: {
                        autoSkip: false
                    },
                    title: {
                        display: false,
                        text: "Interval Duration"
                    }
                },
                y: {
                    min: 0,
                    max: 7,
                    ticks: { stepSize: 1 },
                    title: {
                        display: false,
                        text: "Power Zone"
                    }
                }
            },

            plugins: {
                legend: { display: false },
                tooltip: {
                    callbacks: {
                        title: ctx => {
                            const t = ctx[0].parsed.x;
                            const min = Math.floor(t / 60);
                            const sec = String(t % 60).padStart(2, "0");
                            return `Time ${min}:${sec}`;
                        },
                        label: ctx => {
                            const interval =
                                getIntervalAtTime(structure, ctx.parsed.x);

                            if (!interval) return "";

                            return [
                                `Power Zone: ${interval.powerZone}`,
                                `Cadence: ${interval.targetCadence} rpm`,
                                `Duration: ${formatDuration(interval.duration)}`
                            ];
                        }
                    }
                }
            }
        }
    });
}
function buildPowerSeries(structure) {
    let time = 0;
    const points = [];
    const midpoints = [];

    structure.forEach(interval => {
        const start = time;
        const end = time + interval.duration;
        const midpoint = start + interval.duration / 2;

        points.push({ x: start, y: interval.powerZone });
        points.push({ x: end, y: interval.powerZone });

        midpoints.push({
            value: midpoint,
            label: formatDuration(interval.duration)
        });

        time = end;
    });

    return { points, midpoints };
}
function zoneColor(zone, alpha = 1) {
    const colors = {
        1: `rgba(102, 204, 255, ${alpha})`,
        2: `rgba(102, 204, 102, ${alpha})`,
        3: `rgba(255, 204, 102, ${alpha})`,
        4: `rgba(255, 153, 102, ${alpha})`,
        5: `rgba(255, 102, 102, ${alpha})`,
        6: `rgba(204, 102, 255, ${alpha})`,
        7: `rgba(153, 153, 153, ${alpha})`
    };
    return colors[zone] ?? `rgba(0,0,0,${alpha})`;
}
function formatDuration(seconds) {
    if (seconds >= 60) {
        const min = seconds / 60;
        return Number.isInteger(min)
            ? `${min} min`
            : `${min.toFixed(1)} min`;
    }
    return `${seconds} sec`;
}
function getIntervalAtTime(structure, time) {
    let elapsed = 0;
    for (const interval of structure) {
        elapsed += interval.duration;
        if (time <= elapsed) return interval;
    }
    return null;
}
function convertTargetZonesToString(zones) {
    const dict = {
        1: "Active Recovery",
        2: "Endurance",
        3: "Tempo",
        4: "Threshold",
        5: "VO2 Max",
        6: "Anaerobic",
        7: "Neuromuscular"
    };

    return zones
        .map(z => dict[z])
        .join(", ");
}
// async function favouriteWorkout(workout_id){
//     const url =`http://localhost:8080/workouts/addWorkoutFavourite`;
//     const formData = new FormData();
//     formData.append("workout_id", workout_id);
//     try {
//         const res = await fetch(url, {
//             method: "POST",
//             headers: {
//                 [document.querySelector('meta[name="_csrf_header"]').content]:
//                 document.querySelector('meta[name="_csrf"]').content
//             },
//             body: formData
//         });
//     } catch (e) {
//         console.log("ERROR favouriteWorkout() failed: " + e);
//     }
// }
async function addFavourite(workout_id) {
    return fetch("/workouts/favourites/addWorkoutFavourite", {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [document.querySelector('meta[name="_csrf_header"]').content]:
            document.querySelector('meta[name="_csrf"]').content
        },
        body: JSON.stringify({ workout_id: workout_id })
    });
}

async function removeFavourite(workout_id) {
    return fetch("/workouts/favourites/removeWorkoutFavourite", {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [document.querySelector('meta[name="_csrf_header"]').content]:
            document.querySelector('meta[name="_csrf"]').content
        },
        body: JSON.stringify({ workout_id: workout_id })
    });
}

async function isFavourite(workout_id) {
    const res = await fetch("/workouts/favourites/workoutAlreadyFavourite", {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [document.querySelector('meta[name="_csrf_header"]').content]:
            document.querySelector('meta[name="_csrf"]').content
        },
        body: JSON.stringify({ workout_id: workout_id })
    });

    if (!res.ok) return false;
    return await res.json();
}

function updateUI(favouriteBtn, isFav) {
    favouriteBtn.setAttribute("aria-pressed", isFav);
    favouriteBtn.textContent = isFav ? "★" : "☆";
    favouriteBtn.setAttribute(
        "aria-label",
        isFav ? "Remove from favourites" : "Add to favourites"
    );
}





const container = document.getElementById("workoutsContainer");
const template = document.getElementById("workoutCardTemplate");

if (container != null && template != null){
    window.addEventListener("DOMContentLoaded", getAll);
}
