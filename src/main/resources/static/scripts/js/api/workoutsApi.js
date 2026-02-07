const csrfHeader = document.querySelector('meta[name="_csrf_header"]').content;
const csrfToken = document.querySelector('meta[name="_csrf"]').content;

export async function getAllWorkouts() {
    const res = await fetch("/workouts/getAll");
    if (!res.ok) throw new Error("Failed to fetch workouts");
    return res.json();
}

export async function getPublicWorkouts(){
    const res = await fetch("/workouts/getPublic");
    if (!res.ok) throw new Error("Failed to fetch public workouts");
    return res.json();
}

export async function getCreatedWorkouts(){
    const res = await fetch("/workouts/getByCreated");
    if (!res.ok) throw new Error("Failed to fetch created workouts");
    return res.json();
}

export async function filterPublicWorkouts(form) {
    const params = new URLSearchParams();
    if (form.name) params.append("name", form.name);
    if (form.description) params.append("description", form.description);
    form.targetZones.forEach(zone => params.append("targetZones", form.targetZones));
    if(form.dateEntered) params.append("createdAt", form.dateEntered.toISOString());
    if(form.createdBy) params.append("createdBy", form.createdBy);

    const res = await fetch(`/workouts/filterPublic?${params}`);
    if (!res.ok) throw new Error("Failed to filter workouts");
    return res.json();
}

// this endpoint is admin filtering
export async function filterAllWorkouts(form) {
    const params = new URLSearchParams();
    if (form.name) params.append("name", form.name);
    if (form.description) params.append("description", form.description);
    form.targetZones.forEach(zone => params.append("targetZones", form.targetZones));
    if(form.dateEntered) params.append("createdAt", form.dateEntered.toISOString());
    if(form.createdBy) params.append("createdBy", form.createdBy);
    if (form.workoutPrivacy) params.append("privacy", form.workoutPrivacy);

    const res = await fetch(`/workouts/filter?${params}`);
    if (!res.ok) throw new Error("Failed to filter workouts");
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
        method: "POST",
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
