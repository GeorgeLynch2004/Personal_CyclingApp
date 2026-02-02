package CyclingApp.workouts.likes;

import org.springframework.security.core.userdetails.User;

public interface IWorkoutLikesService {
    public void likeWorkout(Long id, User user);
    public void unlikeWorkout(Long id, User user);
    public void dislikeWorkout(Long id, User user);
    public void undislikeWorkout(Long id, User user);
    public boolean usersLikedWorkout(Long id,  User user);
    public boolean usersDislikedWorkout(Long id, User user);
}
