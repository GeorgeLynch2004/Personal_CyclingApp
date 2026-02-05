package CyclingApp.workouts.likes;

import org.springframework.security.core.userdetails.User;

public interface IWorkoutLikesRepository {
    public int getLikesByWorkoutId(Long id);
    public int getDislikesByWorkoutId(Long id);
    public void addLike(Long userId, Long workoutId);
    public void removeLike(Long userId, Long workoutId);
    public void addDislike(Long userId, Long workoutId);
    public void removeDislike(Long userId, Long workoutId);
    public boolean userLikedWorkout(Long userId, Long workoutId);
    public boolean userDislikedWorkout(Long userId, Long workoutId);
    public Integer getDislikesCount(Long id);
    public Integer getLikesCount(Long id);

}
