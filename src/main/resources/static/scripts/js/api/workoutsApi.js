const csrfHeader = document.querySelector('meta[name="_csrf_header"]').content;
const csrfToken = document.querySelector('meta[name="_csrf"]').content;

export async function getWorkouts(filters = {}) {
    const params = new URLSearchParams();

    Object.entries(filters).forEach(([key, value]) => {
        if (value === null || value === undefined || value === "") return;

        if (Array.isArray(value)) {
            value.forEach(v => params.append(key, v));
        } else if (value instanceof Date) {
            params.append(key, value.toISOString());
        } else {
            params.append(key, value);
        }
    });

    const query = params.toString();
    const res = await fetch(`/workouts${query ? `?${query}` : ""}`);

    if (!res.ok) {
        throw new Error(`Failed to fetch workouts: ${res.status}`);
    }

    return res.json();
}


export async function postWorkout(workout){
    return fetch("/workouts/add", {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
        body: JSON.stringify(workout)
    });
}

export async function patchWorkout(workout){
    return fetch("/workouts/update", {
        method: "PATCH",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
        body: JSON.stringify(workout)
    });
}

export async function deleteWorkout(id){
    return fetch("/workouts/delete", {
        method: "DELETE",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
        body: JSON.stringify(id)
    });
}

export async function getWorkoutPrivacyOptions(){
    const res = await fetch("/workouts/getWorkoutPrivacyOptions");
    if (!res.ok) throw new Error("Failed to fetch workout privacy options");
    return res.json();
}
