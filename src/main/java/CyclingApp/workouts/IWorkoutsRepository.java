package CyclingApp.workouts;

import CyclingApp.common.pagination.PageResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

public interface IWorkoutsRepository
{
    public void addWorkout(WorkoutEntity newWorkoutEntity);
    public void deleteWorkout(Long id, User user);
    public int updateWorkout(WorkoutUpdateRequest workout);

    PageResponse<WorkoutEntity> getWorkouts(Long id, String name, String description, List<Integer> targetZones, String createdBy, WorkoutPrivacy privacy, int page, int size);
    WorkoutEntity getWorkoutById(Long id);
}
