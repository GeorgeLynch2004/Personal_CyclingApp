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
