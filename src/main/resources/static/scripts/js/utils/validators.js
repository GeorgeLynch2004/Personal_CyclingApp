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
    if (!payload) {
        console.error("Workout validation failed: payload is null or undefined");
        return false;
    }

    // Name
    if (typeof payload.name !== "string") {
        console.error("Workout validation failed: name is not a string", payload.name);
        return false;
    }
    if (payload.name.trim().length === 0) {
        console.error("Workout validation failed: name is blank");
        return false;
    }
    if (payload.name.length > 64) {
        console.error("Workout validation failed: name exceeds 64 characters", payload.name.length);
        return false;
    }

    // Description
    if (typeof payload.description !== "string") {
        console.error("Workout validation failed: description is not a string", payload.description);
        return false;
    }
    if (payload.description.trim().length === 0) {
        console.error("Workout validation failed: description is blank");
        return false;
    }
    if (payload.description.length > 256) {
        console.error("Workout validation failed: description exceeds 256 characters", payload.description.length);
        return false;
    }

    // Created by
    if (typeof payload.createdBy !== "string") {
        console.error("Workout validation failed: createdBy is not a string", payload.createdBy);
        return false;
    }
    if (payload.createdBy.trim().length === 0) {
        console.error("Workout validation failed: createdBy is blank");
        return false;
    }
    if (payload.createdBy.length > 40) {
        console.error("Workout validation failed: createdBy exceeds 40 characters", payload.createdBy.length);
        return false;
    }


    // Structure
    if (!Array.isArray(payload.structure)) {
        console.error("Workout validation failed: structure is not an array", payload.structure);
        return false;
    }
    if (payload.structure.length === 0) {
        console.error("Workout validation failed: structure is empty");
        return false;
    }

    for (let i = 0; i < payload.structure.length; i++) {
        const interval = payload.structure[i];

        if (typeof interval !== "object" || interval === null) {
            console.error(`Workout validation failed: interval at index ${i} is not an object`, interval);
            return false;
        }

        if (typeof interval.duration !== "number" || interval.duration <= 0) {
            console.error(
                `Workout validation failed: invalid duration at interval ${i}`,
                interval.duration
            );
            return false;
        }

        if (typeof interval.powerZone !== "number") {
            console.error(
                `Workout validation failed: invalid powerZone at interval ${i}`,
                interval.powerZone
            );
            return false;
        }

        if (typeof interval.targetCadence !== "number") {
            console.error(
                `Workout validation failed: invalid targetCadence at interval ${i}`,
                interval.targetCadence
            );
            return false;
        }
    }

    // Target zones
    if (!Array.isArray(payload.targetZones)) {
        console.error("Workout validation failed: targetZones is not an array", payload.targetZones);
        return false;
    }

    if (payload.targetZones.length === 0) {
        console.error("Workout validation failed: targetZones is empty");
        return false;
    }

    if (!payload.targetZones.every(z => Number.isInteger(z))) {
        console.error(
            "Workout validation failed: targetZones contains non-integer values",
            payload.targetZones
        );
        return false;
    }

    return true;
}

