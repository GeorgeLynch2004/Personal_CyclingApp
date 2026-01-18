export function formatDuration(seconds) {
    if (seconds >= 60) {
        const min = seconds / 60;
        return Number.isInteger(min) ? `${min} min` : `${min.toFixed(1)} min`;
    }
    return `${seconds} sec`;
}
