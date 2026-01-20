import {createWorkoutGraph} from "./workoutChart.js";

export function renderIntervalItems(container, template, intervals, setIntervals, getIntervals){
    Array.from(container.children).forEach(child => {
        if (child.tagName.toLowerCase() !== 'template') {
            container.removeChild(child);
        }
    });

    intervals.forEach(interval => {
        const intervalItem = template.content.cloneNode(true);
        intervalItem.getElementById("intervalItemDuration").textContent = "Duration: " + interval.duration;
        intervalItem.getElementById("intervalItemZone").textContent = "Zone: " + interval.powerZone;
        intervalItem.getElementById("intervalItemCadence").textContent = "Cadence: " + interval.targetCadence;
        intervalItem.getElementById("intervalItemUpBtn").addEventListener('click', () => {
            setIntervals(list =>
                moveItemUp(
                    list.findIndex(e => e.id === interval.id),
                    list
                )
            );
        });

        intervalItem.getElementById("intervalItemDownBtn").addEventListener('click', () => {
            setIntervals(list =>
                moveItemDown(
                    list.findIndex(e => e.id === interval.id),
                    list
                )
            );
        });

        intervalItem.getElementById("intervalItemRemoveBtn").addEventListener('click', () => {
            setIntervals(list =>
                removeItem(
                    list.findIndex(e => e.id === interval.id),
                    list
                )
            );
        });



        container.appendChild(intervalItem);


    });
    const canvas = document.getElementById("workoutGraphCanvas");
    createWorkoutGraph(canvas, getIntervals(), true);
}

export function moveItemUp(index, intervals){
    if (index <= 0) return intervals;

    const copy = [...intervals];
    [copy[index - 1], copy[index]] = [copy[index], copy[index - 1]];
    return copy;
}


export function moveItemDown(index, intervals){
    if (index >= intervals.length - 1) return intervals;

    const copy = [...intervals];
    [copy[index], copy[index + 1]] = [copy[index + 1], copy[index]];
    return copy;
}


export function removeItem(index, intervals){
    return intervals.filter((_, i) => i !== index);
}


export function addItem(item, intervals){
    return [...intervals, item];
}
