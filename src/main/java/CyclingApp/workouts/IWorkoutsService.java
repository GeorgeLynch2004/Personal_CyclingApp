package CyclingApp.workouts;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;

import java.time.LocalDateTime;
import java.util.List;

public interface IWorkoutsService {
    public List<WorkoutEntity> getAllWorkouts();
    public List<WorkoutEntity> getPublicWorkouts();
    public WorkoutEntity getWorkoutById(long id, User user);
    public List<WorkoutEntity> getWorkoutsByCreator(User user);
    public List<WorkoutEntity> getWorkoutsByFilter(
            String name,
            String description,
            List<Integer> targetZones,
            Long id,
            LocalDateTime createdAt,
            String createdBy,
            WorkoutPrivacy workoutPrivacy
    );
    public void addWorkoutFromForm(WorkoutForm workoutForm, User user);
    public void deleteWorkout(Long id, User user);
}
