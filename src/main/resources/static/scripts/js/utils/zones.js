export function zoneColor(zone, alpha = 1) {
    const colors = {
        1: `rgba(102, 204, 255, ${alpha})`,
        2: `rgba(102, 204, 102, ${alpha})`,
        3: `rgba(255, 204, 102, ${alpha})`,
        4: `rgba(255, 153, 102, ${alpha})`,
        5: `rgba(255, 102, 102, ${alpha})`,
        6: `rgba(204, 102, 255, ${alpha})`,
        7: `rgba(153, 153, 153, ${alpha})`
    };
    return colors[zone] ?? `rgba(0,0,0,${alpha})`;
}

export function convertTargetZonesToString(zones) {
    const dict = {
        1: "Active Recovery",
        2: "Endurance",
        3: "Tempo",
        4: "Threshold",
        5: "VO2 Max",
        6: "Anaerobic",
        7: "Neuromuscular"
    };
    return zones.map(z => dict[z]).join(", ");
}

export function getPresentZones(workout) {
    const zones = [];

    workout.forEach(interval => {
        const zone = Number(interval.powerZone);

        if (!zones.includes(zone)) {
            zones.push(zone);
        }
    });

    console.log(zones);
    return zones;
}
