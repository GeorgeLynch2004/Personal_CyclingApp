package CyclingApp.workouts;

import CyclingApp.users.IUsersRepository;
import CyclingApp.users.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
    public ResponseEntity<List<WorkoutEntity>> getAllWorkouts() {
        return workoutsRepository.getAllWorkouts();
    }

    @Override
    public ResponseEntity<WorkoutEntity> getWorkoutById(long id) {
        return workoutsRepository.getWorkoutById(id);
    }

    @Override
    public ResponseEntity<List<WorkoutEntity>> getWorkoutsByFilter(String name, String description, List<Integer> targetZones) {

        return ResponseEntity.ok().body(workoutsRepository.getWorkoutsByFilter(name, description, targetZones));
    }

    @Override
    public ResponseEntity<Void> addWorkoutFromForm(WorkoutForm workoutForm) {
        WorkoutEntity newWorkoutEntity = WorkoutsFactory.createWorkoutEntityFromForm(workoutForm);
        return ResponseEntity.ok().build();
    }
}
