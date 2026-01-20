package CyclingApp.workouts;

import CyclingApp.users.UsersService;
import CyclingApp.workouts.favourites.FavouriteRequest;
import jakarta.validation.Valid;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/workouts")
public class WorkoutsController {

    private final UsersService usersService;
    IWorkoutsService workoutsService;

    @Autowired
    public WorkoutsController(IWorkoutsService workoutsService, UsersService usersService) {
        this.workoutsService = workoutsService;
        this.usersService = usersService;
    }

    //region WorkoutEntity's

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/getAll")
    public ResponseEntity<List<WorkoutEntity>> getAllWorkouts() {
        return workoutsService.getAllWorkouts();
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/getById")
    public ResponseEntity<WorkoutEntity> getWorkoutById(@RequestParam("id") Long id) {
        return workoutsService.getWorkoutById(id);
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/filter")
    public ResponseEntity<List<WorkoutEntity>> getAllWorkoutsByFilter(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String description,
            @RequestParam(required = false) List<Integer> targetZones
    ) {
        return workoutsService.getWorkoutsByFilter(name, description, targetZones);
    }

    @PreAuthorize("hasAnyRole('MEMBER', 'ADMIN')")
    @PostMapping("/add")
    public ResponseEntity<Void> addWorkout(@Valid @RequestBody WorkoutForm workoutForm) {
        System.out.println("Received controller addWorkout(): " + workoutForm.toString());
        workoutsService.addWorkoutFromForm(workoutForm);
        return ResponseEntity.ok().build();
    }

    //endregion
}
