package CyclingApp.workouts;

import CyclingApp.users.IUsersRepository;
import CyclingApp.users.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import java.nio.file.AccessDeniedException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class WorkoutsService implements IWorkoutsService {

    private final IWorkoutsRepository workoutsRepository;
    private final IUsersRepository usersRepository;

    @Autowired
    public WorkoutsService(IWorkoutsRepository workoutsRepository, UsersRepository usersRepository) {
        this.workoutsRepository = workoutsRepository;
        this.usersRepository = usersRepository;
    }

    @Override
    public List<WorkoutEntity> getAllWorkouts() {
        return workoutsRepository.getAllWorkouts();
    }

    @Override
    public List<WorkoutEntity> getPublicWorkouts(){
        return workoutsRepository.getPublicWorkouts();
    }

    @Override
    public WorkoutEntity getWorkoutById(long id, User user) {
        WorkoutEntity workout = workoutsRepository.getWorkoutById(id);

        if (workout == null) {
            return null;
        }

        if (workout.getPrivacyStatus() == WorkoutPrivacy.PUBLIC ||
                workout.getCreatedBy().equals(user.getUsername())) {
            return workout;
        }

        return null;
    }

    @Override
    public List<WorkoutEntity> getWorkoutsByCreator(User user){
        return workoutsRepository.getWorkoutsByCreator(user);
    }

    @Override
    public List<WorkoutEntity> getWorkoutsByFilter(
            String name,
            String description,
            List<Integer> targetZones,
            Long id,
            LocalDateTime createdAt,
            String createdBy,
            WorkoutPrivacy workoutPrivacy
    ) {

        return workoutsRepository
                .getWorkoutsByFilter(
                        name,
                        description,
                        targetZones,
                        id,
                        createdAt,
                        createdBy,
                        workoutPrivacy
                );
    }

    @Override
    public void addWorkoutFromForm(WorkoutForm workoutForm, User user) {

        boolean isAdmin = user.getAuthorities().stream()
                .anyMatch(a -> Objects.equals(a.getAuthority(), "ROLE_ADMIN"));

        if (!isAdmin && workoutForm.getPrivacyStatus() == WorkoutPrivacy.PUBLIC) {
            workoutForm.setPrivacyStatus(WorkoutPrivacy.PENDING_APPROVAL);
        }

        WorkoutEntity newWorkoutEntity = WorkoutsFactory.createWorkoutEntityFromForm(workoutForm);
        workoutsRepository.addWorkout(newWorkoutEntity);
    }

    @Override
    public void deleteWorkout(Long id, User user){

        WorkoutEntity workout = workoutsRepository.getWorkoutById(id);

        boolean isAdmin = user.getAuthorities().stream()
                .anyMatch(a -> Objects.equals(a.getAuthority(), "ROLE_ADMIN"));


        if (isAdmin || workout.getCreatedBy().equals(user.getUsername())) {
            workoutsRepository.deleteWorkout(id, user);
        }
    }

    @Override
    public void updateWorkout(WorkoutUpdateRequest updateRequest) throws AccessDeniedException {
        if (updateRequest == null) return;

        int updated = workoutsRepository.updateWorkout(updateRequest);

        if (updated == 0) {
            throw new AccessDeniedException("Not allowed to update this workout");
        }
        if (updated > 1){
            throw new IllegalStateException(
                    "CRITICAL: Updated multiple rows for workout"
            );
        }
    }
}
