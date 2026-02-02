package CyclingApp.workouts.likes;


import CyclingApp.users.IUsersRepository;
import CyclingApp.workouts.IWorkoutsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

@Service
public class WorkoutLikesService implements IWorkoutLikesService {
    private final IWorkoutLikesRepository workoutLikesRepository;
    private final IUsersRepository usersRepository;

    @Autowired
    public WorkoutLikesService(IWorkoutLikesRepository workoutLikesRepository, IUsersRepository usersRepository) {
        this.workoutLikesRepository = workoutLikesRepository;
        this.usersRepository = usersRepository;
    }

    @Override
    public void likeWorkout(Long id, User user){
        workoutLikesRepository.addLike(usersRepository.getByUsername(user.getUsername()).getId(), id);
    }

    @Override
    public void unlikeWorkout(Long id, User user){
        workoutLikesRepository.removeLike(usersRepository.getByUsername(user.getUsername()).getId(), id);
    }

    @Override
    public void dislikeWorkout(Long id, User user){
        workoutLikesRepository.addDislike(usersRepository.getByUsername(user.getUsername()).getId(), id);
    }

    @Override
    public void undislikeWorkout(Long id, User user){
        workoutLikesRepository.removeDislike(usersRepository.getByUsername(user.getUsername()).getId(), id);
    }

    @Override
    public boolean usersLikedWorkout(Long id, User user){
        return workoutLikesRepository.userLikedWorkout(usersRepository.getByUsername(user.getUsername()).getId(), id);
    }

    @Override
    public boolean usersDislikedWorkout(Long id, User user){
        return workoutLikesRepository.userDislikedWorkout(usersRepository.getByUsername(user.getUsername()).getId(), id);
    }

}
