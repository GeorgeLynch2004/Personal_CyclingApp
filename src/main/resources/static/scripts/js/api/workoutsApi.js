const csrfHeader = document.querySelector('meta[name="_csrf_header"]').content;
const csrfToken = document.querySelector('meta[name="_csrf"]').content;

export async function getAllWorkouts() {
    const res = await fetch("/workouts/getAll");
    if (!res.ok) throw new Error("Failed to fetch workouts");
    return res.json();
}

export async function filterWorkouts(params) {
    const res = await fetch(`/workouts/filter?${params}`);
    if (!res.ok) throw new Error("Failed to filter workouts");
    return res.json();
}
