package CyclingApp.workouts.favourites;

import CyclingApp.workouts.WorkoutEntity;

import java.util.List;

public interface IWorkoutFavouritesRepository {
    public List<WorkoutEntity> getWorkoutFavouritesById(Long userId);
    public void addWorkoutFavourite(Long user_id, Long workout_id);
    public void removeWorkoutFavourite(Long user_id, Long workout_id);
    public boolean workoutAlreadyFavourite(Long user_id, Long workout_id);
}
