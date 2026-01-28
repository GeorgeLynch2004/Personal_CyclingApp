export async function getUser(username) {
    const res = await fetch(`/users/getByUsername?username=${username}`);
    if (!res.ok) throw new Error("Failed to fetch user");
    return res.json();
}

export async function getAllUsers(){
    const res = await fetch("/users/getAll");
    if (!res.ok) throw new Error("Failed to fetch users");
    return res.json();
}
