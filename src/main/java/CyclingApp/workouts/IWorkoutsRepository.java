package CyclingApp.workouts;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface IWorkoutsRepository
{
    public List<WorkoutEntity> getAllWorkouts();
    public List<WorkoutEntity> getPublicWorkouts();
    public WorkoutEntity getWorkoutById(long id);
    public List<WorkoutEntity> getWorkoutsByCreator(User user);
    public List<WorkoutEntity> getWorkoutsByFilter(String name, String description, List<Integer> targetZones);
    public void addWorkout(WorkoutEntity newWorkoutEntity);
}
