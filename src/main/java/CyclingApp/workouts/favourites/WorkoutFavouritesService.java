package CyclingApp.workouts.favourites;

import CyclingApp.users.IUsersRepository;
import CyclingApp.users.UsersRepository;
import CyclingApp.workouts.IWorkoutsRepository;
import CyclingApp.workouts.WorkoutEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkoutFavouritesService implements IWorkoutFavouritesService {

    private final IWorkoutFavouritesRepository workoutFavouritesRepository;
    private final IUsersRepository usersRepository;

    @Autowired
    public WorkoutFavouritesService(IWorkoutFavouritesRepository workoutFavouritesRepository, UsersRepository usersRepository) {
        this.workoutFavouritesRepository = workoutFavouritesRepository;
        this.usersRepository = usersRepository;
    }

    @Override
    public List<WorkoutEntity> getWorkoutFavouritesByUsername(String username){
        Long userId = usersRepository.getByUsername(username).getId();
        return workoutFavouritesRepository.getWorkoutFavouritesById(userId);
    }

    @Override
    public void addWorkoutFavourite(Long user_id, Long workout_id){
        if (workoutAlreadyFavourite(user_id, workout_id)) {
            return;
        }
        workoutFavouritesRepository.addWorkoutFavourite(user_id, workout_id);
    }

    @Override
    public void removeWorkoutFavourite(Long user_id, Long workout_id){
        if (!workoutAlreadyFavourite(user_id, workout_id)){
            return;
        }
        workoutFavouritesRepository.removeWorkoutFavourite(user_id, workout_id);
    }

    @Override
    public boolean workoutAlreadyFavourite(Long user_id, Long workout_id){
        return workoutFavouritesRepository.workoutAlreadyFavourite(user_id, workout_id);
    }
}
