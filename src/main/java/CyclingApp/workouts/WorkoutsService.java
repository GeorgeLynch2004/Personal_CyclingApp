package CyclingApp.workouts;

import CyclingApp.users.IUsersRepository;
import CyclingApp.users.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

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
    public List<WorkoutEntity> getWorkoutsByFilter(String name, String description, List<Integer> targetZones) {

        return workoutsRepository.getWorkoutsByFilter(name, description, targetZones);
    }

    @Override
    public void addWorkoutFromForm(WorkoutForm workoutForm) {
        WorkoutEntity newWorkoutEntity = WorkoutsFactory.createWorkoutEntityFromForm(workoutForm);
        workoutsRepository.addWorkout(newWorkoutEntity);
    }

    @Override
    public void deleteWorkout(Long id, User user){
        workoutsRepository.deleteWorkout(id, user);
    }
}
