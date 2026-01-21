package CyclingApp.workouts;

import CyclingApp.users.UsersService;
import CyclingApp.workouts.favourites.FavouriteRequest;
import jakarta.validation.Valid;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/workouts")
public class WorkoutsController {

    private final UsersService usersService;
    private final JdbcTemplate jdbcTemplate;
    IWorkoutsService workoutsService;

    @Autowired
    public WorkoutsController(IWorkoutsService workoutsService, UsersService usersService, JdbcTemplate jdbcTemplate) {
        this.workoutsService = workoutsService;
        this.usersService = usersService;
        this.jdbcTemplate = jdbcTemplate;
    }

    //region WorkoutEntity's

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/getAll")
    public ResponseEntity<List<WorkoutEntity>> getAllWorkouts() {
        return ResponseEntity.ok().body( workoutsService.getAllWorkouts());
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/getPublic")
    public ResponseEntity<List<WorkoutEntity>> getPublicWorkouts() {
        return ResponseEntity.ok().body(workoutsService.getPublicWorkouts());
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/getById")
    public ResponseEntity<WorkoutEntity> getWorkoutById(@RequestParam("id") Long id, @AuthenticationPrincipal User user) {
        return ResponseEntity.ok().body(workoutsService.getWorkoutById(id, user));
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/getByCreated")
    public ResponseEntity<List<WorkoutEntity>> getWorkoutsByCreated(@AuthenticationPrincipal User user){
        return ResponseEntity.ok().body(workoutsService.getWorkoutsByCreator(user));
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/filter")
    public ResponseEntity<List<WorkoutEntity>> getAllWorkoutsByFilter(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String description,
            @RequestParam(required = false) List<Integer> targetZones
    ) {
        return ResponseEntity.ok().body( workoutsService.getWorkoutsByFilter(name, description, targetZones));
    }

    @PreAuthorize("hasAnyRole('MEMBER', 'ADMIN')")
    @PostMapping("/add")
    public ResponseEntity<Void> addWorkout(@Valid @RequestBody WorkoutForm workoutForm) {
        System.out.println("Received createdBy as " + workoutForm.getCreatedBy());
        workoutsService.addWorkoutFromForm(workoutForm);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete")
    public ResponseEntity<Void> deleteWorkout(@RequestBody Long id, @AuthenticationPrincipal User user){
        workoutsService.deleteWorkout(id, user);
        return ResponseEntity.ok().build();
    }

    //endregion
}
