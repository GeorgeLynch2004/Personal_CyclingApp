package CyclingApp.workouts;

import org.springframework.http.ResponseEntity;

import java.util.List;

public interface IWorkoutsService {
    public ResponseEntity<List<WorkoutEntity>> getAllWorkouts();
    public ResponseEntity<WorkoutEntity> getWorkoutById(long id);
    public ResponseEntity<List<WorkoutEntity>> getWorkoutsByFilter(String name, String description, List<Integer> targetZones);
    public ResponseEntity<Void> addWorkoutFromForm(WorkoutForm workoutForm);
}
