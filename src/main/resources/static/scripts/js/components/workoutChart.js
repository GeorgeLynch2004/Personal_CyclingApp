import { zoneColor } from "../utils/zones.js";
import { formatDuration } from "../utils/formatters.js";

export function createWorkoutGraph(canvas, structure) {
    const { points, midpoints } = buildPowerSeries(structure);

    new Chart(canvas.getContext("2d"), {
        type: "line",
        data: {
            datasets: [{
                data: points,
                stepped: true,
                fill: true,
                pointRadius: 0,
                borderWidth: 2,
                segment: {
                    borderColor: ctx => zoneColor(ctx.p0.parsed.y),
                    backgroundColor: ctx => zoneColor(ctx.p0.parsed.y, 0.3)
                }
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,

            scales: {
                x: {
                    type: "linear",

                    grid: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        display: false
                    }
                },
                y: {
                    min: 0,
                    max: 7,

                    grid: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        display: false
                    }
                }
            },

            plugins: {
                legend: { display: false },
                tooltip: { enabled: false }
            }
        }

    });
}

function buildPowerSeries(structure) {
    let time = 0;
    const points = [];
    const midpoints = [];

    structure.forEach(interval => {
        points.push({ x: time, y: interval.powerZone });
        time += interval.duration;
        points.push({ x: time, y: interval.powerZone });

        midpoints.push({
            value: time - interval.duration / 2,
            label: formatDuration(interval.duration)
        });
    });

    return { points, midpoints };
}
