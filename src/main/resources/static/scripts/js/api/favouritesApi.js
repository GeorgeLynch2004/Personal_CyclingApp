const csrfHeader = document.querySelector('meta[name="_csrf_header"]').content;
const csrfToken = document.querySelector('meta[name="_csrf"]').content;

export async function getFavouritesByUsername(username){
    return (await fetch(`/workouts/favourites/getWorkoutFavouritesByUsername?username=${username}`, {
        method: "GET",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        }
    })).json();
}

export async function addFavourite(workout_id) {
    return fetch("/workouts/favourites/addWorkoutFavourite", {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
        body: JSON.stringify({ workout_id })
    });
}

export async function removeFavourite(workout_id) {
    return fetch("/workouts/favourites/removeWorkoutFavourite", {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
        body: JSON.stringify({ workout_id })
    });
}

export async function isFavourite(workout_id) {
    const res = await fetch("/workouts/favourites/workoutAlreadyFavourite", {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
        body: JSON.stringify({ workout_id })
    });
    return res.ok ? res.json() : false;
}
