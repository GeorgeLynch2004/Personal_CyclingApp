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

import java.nio.file.AccessDeniedException;
import java.time.LocalDateTime;
import java.util.Arrays;
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

    @PreAuthorize("hasRole('ADMIN')")
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
    @GetMapping("/filterPublic")
    public ResponseEntity<List<WorkoutEntity>> getPublicWorkoutsByFilter(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String description,
            @RequestParam(required = false) List<Integer> targetZones,
            @RequestParam(required = false) Long id,
            @RequestParam(required = false) LocalDateTime createdAt,
            @RequestParam(required = false) String createdBy
    ) {
        return ResponseEntity.ok().body(
                workoutsService
                        .getWorkoutsByFilter(
                                name,
                                description,
                                targetZones,
                                id,
                                createdAt,
                                createdBy,
                                WorkoutPrivacy.PUBLIC
                        ));
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

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/filter")
    public ResponseEntity<List<WorkoutEntity>> getAllWorkoutsByFilter(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String description,
            @RequestParam(required = false) List<Integer> targetZones,
            @RequestParam(required = false) Long id,
            @RequestParam(required = false) LocalDateTime createdAt,
            @RequestParam(required = false) String createdBy,
            @RequestParam(required=false) WorkoutPrivacy privacy
    ) {
        return ResponseEntity.ok().body(
                workoutsService
                        .getWorkoutsByFilter(
                                name,
                                description,
                                targetZones,
                                id,
                                createdAt,
                                createdBy,
                                privacy
                        ));
    }

    @PreAuthorize("hasAnyRole('MEMBER', 'ADMIN')")
    @PostMapping("/add")
    public ResponseEntity<Void> addWorkout(@Valid @RequestBody WorkoutForm workoutForm, @AuthenticationPrincipal User user) {
        System.out.println("Received createdBy as " + workoutForm.getCreatedBy());
        workoutsService.addWorkoutFromForm(workoutForm, user);
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("hasRole('ADMIN') || @workoutSecurity.isCreator(#workoutId, authentication)")
    public ResponseEntity<Void> updateWorkout(@PathVariable Long workoutId, @RequestBody WorkoutEntity workout) throws AccessDeniedException {
        workoutsService.updateWorkout(workoutId, workout);
        return ResponseEntity.ok().build();
    }


    @PreAuthorize("isAuthenticated()")
    @DeleteMapping("/delete")
    public ResponseEntity<Void> deleteWorkout(@RequestBody Long id, @AuthenticationPrincipal User user){
        workoutsService.deleteWorkout(id, user);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/getWorkoutPrivacyOptions")
    public ResponseEntity<List<WorkoutPrivacy>> getWorkoutPrivacyOptions(){
        return ResponseEntity.ok().body(Arrays.stream(WorkoutPrivacy.values()).toList());
    }


    //endregion
}
