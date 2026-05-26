import { zoneColor } from "../utils/zones.js";
import { buildPowerSeries } from "../utils/formatters.js";

let chart;
export function createWorkoutGraph(canvas, structure, refreshChart = true) {
    const { points } = buildPowerSeries(structure);
    const totalDuration = points.length > 0 ? points[points.length - 1].x : 0;
    points.push({ x: totalDuration, y: 0 });

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
                    display: false
                },
                y: {
                    min: 0,
                    max: 7,
                    display: false
                }
            },

            plugins: {
                legend: { display: false },
                tooltip: { enabled: false }
            }
        }
    });
}


