import { zoneColor } from "../utils/zones.js";
import { formatDuration } from "../utils/formatters.js";

let chart;
export function createWorkoutGraph(canvas, structure, refreshChart = true) {
    const { points, totalDuration } = buildPowerSeries(structure);

    if (chart && refreshChart) chart.destroy();

    chart = new Chart(canvas.getContext("2d"), {
        type: "line",
        data: {
            datasets: [{
                data: points,
                stepped: "after",
                fill: true,
                pointRadius: 0,
                borderWidth: 2,
                tension: 0,
                segment: {
                    borderColor: ctx => zoneColor(ctx.p0.parsed.y),
                    backgroundColor: ctx => zoneColor(ctx.p0.parsed.y, 0.3)
                }
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            animation: false,

            scales: {
                x: {
                    type: "linear",
                    min: 0,
                    max: totalDuration,
                    grid: { display: false },
                    ticks: { display: false }
                },
                y: {
                    min: 0,
                    max: 7,
                    grid: { display: false },
                    ticks: { display: false }
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

    structure.forEach(interval => {
        points.push({ x: time, y: interval.powerZone });
        time += interval.duration;
        points.push({ x: time, y: interval.powerZone });
    });

    points.push({ x: time, y: 0 });

    return { points, totalDuration: time };
}

