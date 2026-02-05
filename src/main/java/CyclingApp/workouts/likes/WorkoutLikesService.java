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
        // If the workout is already disliked we must ensure that the client cannot also like the workout, instead we undislike the workout to ensure consistency
        if (workoutLikesRepository.userDislikedWorkout(usersRepository.getByUsername(user.getUsername()).getId(), id)){
            workoutLikesRepository.removeDislike(usersRepository.getByUsername(user.getUsername()).getId(), id);
        }

        workoutLikesRepository.addLike(usersRepository.getByUsername(user.getUsername()).getId(), id);
    }

    @Override
    public void unlikeWorkout(Long id, User user){
        workoutLikesRepository.removeLike(usersRepository.getByUsername(user.getUsername()).getId(), id);
    }

    @Override
    public void dislikeWorkout(Long id, User user){
        // If workout is already liked we must ensure that the client cannot also dislike the workout, instead we unlike before dislike
        if (workoutLikesRepository.userLikedWorkout(usersRepository.getByUsername(user.getUsername()).getId(), id)){
            workoutLikesRepository.removeLike(usersRepository.getByUsername(user.getUsername()).getId(), id);
        }

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

    @Override
    public Integer getLikesCount(Long id){
        return workoutLikesRepository.getLikesCount(id);
    }

    @Override
    public Integer getDislikesCount(Long id){
        return workoutLikesRepository.getDislikesCount(id);
    }

}
