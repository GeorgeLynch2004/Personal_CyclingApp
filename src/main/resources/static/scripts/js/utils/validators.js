import {openPopup} from "../components/popup.js";

export function validPowerZone(powerZone) {
    if (powerZone >= 1 && powerZone <= 7) {
        return true;
    } else {
        alert("Power zone must be between 1–7.");
        return false;
    }
}

export function validCadence(cadence) {
    if (cadence >= 1 && cadence <= 150) {
        return true;
    } else {
        alert("Cadence must be between 1–150.");
        return false;
    }
}

export function validWorkout(payload) {
    const fail = (message, logValue) => {
        console.error("Workout validation failed:", message, logValue);

        openPopup({
            title: "Validation Error",
            content: message,
            buttons: [
                {
                    label: "OK",
                    className: "popup-btn primary",
                    onClick: (close) => close()
                }
            ]
        });

        return false;
    };

    if (!payload) {
        return fail("Workout data is missing.", payload);
    }

    // Name
    if (typeof payload.name !== "string") {
        return fail("Workout name is invalid.", payload.name);
    }
    if (payload.name.trim().length === 0) {
        return fail("Workout name cannot be empty.");
    }
    if (payload.name.length > 64) {
        return fail("Workout name must not exceed 64 characters.");
    }

    // Description
    if (typeof payload.description !== "string") {
        return fail("Workout description is invalid.", payload.description);
    }
    if (payload.description.trim().length === 0) {
        return fail("Workout description cannot be empty.");
    }
    if (payload.description.length > 256) {
        return fail("Workout description must not exceed 256 characters.");
    }

    // Created by
    if (typeof payload.createdBy !== "string") {
        return fail("Workout creator is invalid.", payload.createdBy);
    }
    if (payload.createdBy.trim().length === 0) {
        return fail("Workout creator cannot be empty.");
    }
    if (payload.createdBy.length > 40) {
        return fail("Creator name must not exceed 40 characters.");
    }

    // Structure
    if (!Array.isArray(payload.structure)) {
        return fail("Workout structure is invalid.", payload.structure);
    }
    if (payload.structure.length === 0) {
        return fail("Workout must contain at least one interval.");
    }

    for (let i = 0; i < payload.structure.length; i++) {
        const interval = payload.structure[i];

        if (typeof interval !== "object" || interval === null) {
            return fail(`Interval ${i + 1} is invalid.`, interval);
        }

        if (typeof interval.duration !== "number" || interval.duration <= 0) {
            return fail(`Interval ${i + 1} has invalid duration.`, interval.duration);
        }

        if (typeof interval.powerZone !== "number") {
            return fail(`Interval ${i + 1} has invalid power zone.`, interval.powerZone);
        }

        if (typeof interval.targetCadence !== "number") {
            return fail(`Interval ${i + 1} has invalid target cadence.`, interval.targetCadence);
        }
    }

    // Target zones
    if (!Array.isArray(payload.targetZones)) {
        return fail("Target zones data is invalid.", payload.targetZones);
    }

    if (payload.targetZones.length === 0) {
        return fail("Workout must contain at least one target zone.");
    }

    if (!payload.targetZones.every(z => Number.isInteger(z))) {
        return fail("Target zones contain invalid values.", payload.targetZones);
    }

    return true;
}


export function validateFtp(ftp) {
    // Required
    if (!Number.isInteger(ftp)) {
        console.error("FTP must be a whole number.");
        return false;
    }

    // Realistic cycling range
    if (ftp < 80 || ftp > 600) {
        console.error("FTP must be between 80 and 600 watts.");
        return false;
    }

    return true;
}

