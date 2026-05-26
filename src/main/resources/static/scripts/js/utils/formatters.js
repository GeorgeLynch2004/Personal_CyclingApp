export function formatDuration(seconds) {
    if (seconds >= 60) {
        const min = seconds / 60;
        return Number.isInteger(min) ? `${min} min` : `${min.toFixed(1)} min`;
    }
    return `${seconds} sec`;
}
export function buildPowerSeries(structure) {
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
export function getIntervalAtTime(structure, time) {
    let elapsed = 0;
    for (const interval of structure) {
        elapsed += interval.duration;
        if (time <= elapsed) return interval;
    }
    return null;
}