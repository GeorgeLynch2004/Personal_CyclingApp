const csrfHeader = document.querySelector('meta[name="_csrf_header"]').content;
const csrfToken = document.querySelector('meta[name="_csrf"]').content;

export async function likeWorkout(workoutId){
    const res = await fetch(`/workouts/likes/${workoutId}/like`, {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
    });
    if (!res.ok) throw new Error("Failed to like workout");
}

export async function unlikeWorkout(workoutId){
    const res = await fetch(`/workouts/likes/${workoutId}/unlike`, {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
    });
    if (!res.ok) throw new Error("Failed to unlike workout");
}

export async function dislikeWorkout(workoutId){
    const res = await fetch(`/workouts/likes/${workoutId}/dislike`, {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
    });
    if (!res.ok) throw new Error("Failed to dislike workout");
}

export async function undislikeWorkout(workoutId){
    const res = await fetch(`/workouts/likes/${workoutId}/undislike`, {
        method: "POST",
        credentials: "include",
        headers: {
            "Content-Type": "application/json",
            [csrfHeader]: csrfToken
        },
    });
    if (!res.ok) throw new Error("Failed to undislike workout");

}

export async function isLiked(workoutId){
    const res = await fetch(`/workouts/likes/${workoutId}/isLiked`);
    if (!res.ok) throw new Error("Failed to check if workout is liked");
    return res.json();
}

export async function isDisliked(workoutId){
    const res = await fetch(`/workouts/likes/${workoutId}/isDisliked`);
    if (!res.ok) throw new Error("Failed to check if workout is disliked");
    return res.json();
}

export async function getLikes(workoutId){
    const res = await fetch(`/workouts/likes/${workoutId}/likes`);
    if (!res.ok) throw new Error("Failed to get likes count");
    return res.json();
}

export async function getDislikes(workoutId){
    const res = await fetch(`/workouts/likes/${workoutId}/dislikes`);
    if (!res.ok) throw new Error("Failed to get dislikes count");
    return res.json();
}