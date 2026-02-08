package CyclingApp.workouts;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

@Component("workoutSecurity")
public class WorkoutSecurity {
    private final IWorkoutsRepository workoutsRepository;

    @Autowired
    public WorkoutSecurity(IWorkoutsRepository workoutsRepository){
        this.workoutsRepository = workoutsRepository;
    }

    public boolean isCreator(Long workoutId, Authentication authentication){
        String username = authentication.getName();

        return workoutsRepository.getWorkoutById(workoutId).getCreatedBy().equals(username);
    }
}
