async function downloadWorkout(id) {
    const res = await fetch(`/workouts/download/${id}`);

    if (!res.ok) {
        throw new Error("Failed to download workout");
    }

    const blob = await res.blob();

    const disposition = res.headers.get("Content-Disposition");
    let filename = "workout.fit";

    if (disposition) {
        const match = disposition.match(/filename="(.+)"/);
        if (match) {
            filename = match[1];
        }
    }

    const url = window.URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = filename;
    a.click();

    window.URL.revokeObjectURL(url);
}
