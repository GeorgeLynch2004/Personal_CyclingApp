package CyclingApp.workouts;

import org.jspecify.annotations.Nullable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;

import java.nio.file.AccessDeniedException;
import java.time.LocalDateTime;
import java.util.List;

public interface IWorkoutsService {
    public void addWorkoutFromForm(WorkoutForm workoutForm, User user);
    public void deleteWorkout(Long id, User user);
    public void updateWorkout(WorkoutUpdateRequest workout) throws AccessDeniedException;

    public List<WorkoutEntity> getWorkouts(Long id, String name, String description, List<Integer> targetZones, String createdBy, WorkoutPrivacy privacy, int page, int size, User user);

    WorkoutEntity getWorkoutById(Long id, User user);
}

