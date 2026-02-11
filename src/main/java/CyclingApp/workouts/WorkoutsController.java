package CyclingApp.workouts;

import CyclingApp.common.pagination.PageResponse;
import CyclingApp.users.UsersService;
import CyclingApp.workouts.favourites.FavouriteRequest;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
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

    @PreAuthorize("isAuthenticated()")
    @GetMapping
    public ResponseEntity<PageResponse<WorkoutEntity>> getWorkouts(
            @RequestParam(required = false) Long id,
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String description,
            @RequestParam(required = false) List<Integer> targetZones,
            @RequestParam(required = false) String createdBy,
            @RequestParam(required = false) WorkoutPrivacy privacy,
            @RequestParam(defaultValue = "0")@Min(0) int page,
            @RequestParam(defaultValue = "20")@Min(1)@Max(100) int size,
            @AuthenticationPrincipal User user
    ) {
        return ResponseEntity.ok(
                workoutsService.getWorkouts(
                        id,
                        name,
                        description,
                        targetZones,
                        createdBy,
                        privacy,
                        page,
                        size,
                        user
                )
        );
    }

    @PreAuthorize("hasAnyRole('MEMBER', 'ADMIN')")
    @PostMapping("/add")
    public ResponseEntity<Void> addWorkout(@Valid @RequestBody WorkoutForm workoutForm, @AuthenticationPrincipal User user) {
        System.out.println("Received createdBy as " + workoutForm.getCreatedBy());
        workoutsService.addWorkoutFromForm(workoutForm, user);
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("hasRole('ADMIN') || @workoutSecurity.isCreator(#updateRequest.getId(), authentication)")
    @PatchMapping("/update")
    public ResponseEntity<Void> updateWorkout(@RequestBody WorkoutUpdateRequest updateRequest) throws AccessDeniedException {
        workoutsService.updateWorkout(updateRequest);
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
