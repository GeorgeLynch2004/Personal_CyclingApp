package CyclingApp.workouts;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface IWorkoutsRepository
{
    public ResponseEntity<List<WorkoutEntity>> getAllWorkouts();
    public ResponseEntity<WorkoutEntity> getWorkoutById(long id);
    public List<WorkoutEntity> getWorkoutsByFilter(String name, String description, List<Integer> targetZones);
    public void addWorkout(WorkoutEntity newWorkoutEntity);
}
