package CyclingApp.workouts;

import jakarta.validation.Valid;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/workouts")
public class WorkoutsController {

    IWorkoutsService workoutsService;

    @Autowired
    private WorkoutsController(IWorkoutsService workoutsService) {
        this.workoutsService = workoutsService;
    }

    @GetMapping("/getAll")
    public ResponseEntity<List<WorkoutEntity>> getAllWorkouts() {
        return workoutsService.getAllWorkouts();
    }

    @GetMapping("/getById")
    public ResponseEntity<WorkoutEntity> getWorkoutById(@RequestParam("id") Long id) {
        return workoutsService.getWorkoutById(id);
    }

    @GetMapping("/filter")
    public ResponseEntity<List<WorkoutEntity>> getAllWorkoutsByFilter(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String description,
            @RequestParam(required = false) List<Integer> targetZones
    ) {
        return workoutsService.getWorkoutsByFilter(name, description, targetZones);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addWorkout(@Valid @ModelAttribute WorkoutForm workoutForm) {
        return workoutsService.addWorkoutFromForm(workoutForm);
    }

}
