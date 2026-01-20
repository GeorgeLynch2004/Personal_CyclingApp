package CyclingApp.workouts;

import java.io.IOException;
import java.time.LocalDateTime;

public class WorkoutsFactory {
    public static WorkoutEntity createWorkoutEntityFromForm(WorkoutForm workoutForm) {
        return new WorkoutEntity(
                LocalDateTime.now(),
                workoutForm.getCreatedBy(),
                WorkoutPrivacy.PRIVATE,
                workoutForm.getName(),
                workoutForm.getDescription(),
                workoutForm.getStructure(),
                workoutForm.getTargetZones()
        );
    }
}
