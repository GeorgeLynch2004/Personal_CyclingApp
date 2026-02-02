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

export async function filterUsers(form){
    const params = new URLSearchParams();
    if (form.id) params.append("id", form.id);
    if (form.name) params.append("name", form.name);
    if (form.email) params.append("email", form.email);
    if (form.role) params.append("role", form.role);

    const res = await fetch(`/users/filter?${params}`);
    if (!res.ok) throw new Error("Failed to filter users");
    return res.json();
}
