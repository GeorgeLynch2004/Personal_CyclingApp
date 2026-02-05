import {getUser, updateUserFtp} from "../api/usersApi.js";
import {renderWorkouts} from "../components/workoutCard.js";
import {getFavouritesByUsername} from "../api/favouritesApi.js";
import {getCreatedWorkouts} from "../api/workoutsApi.js";
import {validateFtp} from "../utils/validators.js";

const { username } = window.APP_USER;

const usernameElement = document.getElementById("username");
const emailElement = document.getElementById("email");
const usertypeElement = document.getElementById("usertype");
const ftpElement = document.getElementById("profileFtp");
const ftpStart = Number(ftpElement.value);

try {
    const data = await getUser(username);
    usernameElement.textContent = `Username: ${data.username}`;
    emailElement.textContent = `Email: ${data.email}`;
    usertypeElement.textContent = `Access level: ${data.role}`;
    ftpElement.value = data.ftp;
} catch (err) {
    console.error("Failed to load user", err);
}

const ftpForm = document.getElementById("profileForm");

ftpForm.addEventListener('submit', async (e) => {
    e.preventDefault();
    const ftp = Number(document.getElementById("profileFtp").value);

    if (ftp === ftpStart) return;
    if (!validateFtp(ftp)) return;

    await updateUserFtp(ftp);
});



const favouritesContainer = document.getElementById("favouriteWorkoutsContainer");
const template = document.getElementById("favouriteWorkoutTemplate");

try {
    const data = await getFavouritesByUsername(username);
    const elements = {
        name: "workoutName",
        description: "workoutDescription",
        targetZones: "workoutTargetZones",
        expandButton: "workoutExpandButton",
        favouriteButton: "workoutFavouriteButton"
    }
    await renderWorkouts(favouritesContainer, template,elements, data);
} catch (err) {
    console.error("Failed to render favourited workouts", err);
}

const createdContainer = document.getElementById("createdWorkoutsContainer");
const createdTemplate = document.getElementById("createdWorkoutTemplate");

try {
    const data = await getCreatedWorkouts();
    const elements = {
        name: "createdWorkoutName",
        description: "createdWorkoutDescription",
        targetZones: "createdWorkoutTargetZones",
        expandButton: "createdWorkoutExpandButton",
        favouriteButton: "createdWorkoutFavouriteButton",
        deleteButton: "createdWorkoutDeleteButton"
    }
    await renderWorkouts(createdContainer, createdTemplate, elements, data);
} catch (err){
    console.error("Failed to render created workouts", err);
}



