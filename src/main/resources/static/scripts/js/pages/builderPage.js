import {addItem, renderIntervalItems} from "../components/intervalItemList.js";
import {validCadence, validPowerZone, validWorkout} from "../utils/validators.js";
import {getPresentZones} from "../utils/zones.js";
import {postWorkout} from "../api/workoutsApi.js";
import {openPopup} from "../components/popup.js";

const { username } = window.APP_USER;
const container = document.getElementById("intervalsList");
const template = document.getElementById("intervalItemTemplate");
let intervalList = [];
const formDuration = document.getElementById("intervalDuration");
const formZone = document.getElementById("intervalZone");
const formCadence = document.getElementById("intervalCadence");

function setIntervals(updater){
    intervalList = updater(intervalList);
    renderIntervalItems(container, template, intervalList, setIntervals, getIntervals);
}

export function getNextId(intervals) {
    return Math.max(0, ...intervals.map(i => i.id)) + 1;
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
                    id: getNextId(list),
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
            createdBy: username,
            description: document.getElementById("workoutDescription").value,
            privacyStatus: document.getElementById("workoutPrivacy").value,
            structure: intervalList,
            targetZones: getPresentZones(intervalList)
        };

        if (!validWorkout(payload)){
            console.error("Payload was invalid and was not sent.");
            return;
        }

        console.log("Payload intervals: " + JSON.stringify(payload.structure));

        const res = await postWorkout(payload);

        if (res.ok) {
            openPopup({
                title: "Save Workout",
                content: "Workout was saved successfully.",
                buttons: [
                    {
                        label: "Go to Profile",
                        className: "popup-btn primary",
                        onClick: (close) => {
                            close();
                            window.location.href = `/pages/profile/${username}#created-workouts`;
                        }
                    }
                ]
            });
        } else {
            openPopup({
                title: "Save Workout",
                content: "Server was not able to save workout, please try again.",
                buttons: [
                    {
                        label: "OK",
                        className: "popup-btn",
                        onClick: (close) => close()
                    }
                ]
            });
        }

    });
