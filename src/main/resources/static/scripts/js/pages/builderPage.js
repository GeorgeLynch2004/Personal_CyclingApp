import {addItem, renderIntervalItems} from "../components/intervalItemList.js";
import {validCadence, validPowerZone} from "../utils/validators.js";
import {getPresentZones} from "../utils/zones.js";
import {postWorkout} from "../api/workoutsApi.js";

const container = document.getElementById("intervalsList");
const template = document.getElementById("intervalItemTemplate");
let intervalList = [];

let id = 0;
const formDuration = document.getElementById("intervalDuration");
const formZone = document.getElementById("intervalZone");
const formCadence = document.getElementById("intervalCadence");

function setIntervals(updater){
    intervalList = updater(intervalList);
    renderIntervalItems(container, template, intervalList, setIntervals, getIntervals);
}

function getIntervals(){
    return intervalList;
}

document
    .getElementById("intervalSubmitButton")
    .addEventListener("click", (e) => {
        e.preventDefault();

        if (
            !validCadence(formCadence.valueAsNumber) ||
            !validPowerZone(formZone.valueAsNumber)
        ) {
            return;
        }

        setIntervals(list =>
            addItem(
                {
                    id: id++,
                    duration: formDuration.valueAsNumber,
                    powerZone: formZone.valueAsNumber,
                    targetCadence: formCadence.valueAsNumber
                },
                list
            )
        );
    });

document.getElementById("workoutSaveBtn")
    .addEventListener("click", async (e) => {
        e.preventDefault();

        const workoutName = document.getElementById("workoutName").value;
        const workoutDescription = document.getElementById("workoutDescription").value;
        const structure = intervalList;
        const targetZones = getPresentZones(intervalList);

        const payload = {
            name: document.getElementById("workoutName").value,
            description: document.getElementById("workoutDescription").value,
            structure: intervalList,
            targetZones: getPresentZones(intervalList)
        };

        console.log("Payload intervals: " + JSON.stringify(payload.structure));

        await postWorkout(payload);
    });
