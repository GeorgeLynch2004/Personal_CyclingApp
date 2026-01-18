package CyclingApp.workouts.favourites;

import CyclingApp.users.UsersService;
import CyclingApp.workouts.IWorkoutsService;
import CyclingApp.workouts.WorkoutEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/workouts/favourites")
public class WorkoutFavouritesController {
    private final UsersService usersService;
    IWorkoutFavouritesService workoutsFavouritesService;

    @Autowired
    public WorkoutFavouritesController(IWorkoutFavouritesService workoutsFavouritesService, UsersService usersService) {
        this.workoutsFavouritesService = workoutsFavouritesService;
        this.usersService = usersService;
    }

    @PreAuthorize("principal.username == authentication.name || hasRole('ADMIN')")
    @GetMapping("/getWorkoutFavouritesByUsername")
    public ResponseEntity<List<WorkoutEntity>> getWorkoutFavouritesByUsername(@RequestParam(required = true) String username){
        return ResponseEntity.ok().body(workoutsFavouritesService.getWorkoutFavouritesByUsername(username));
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/addWorkoutFavourite")
    public ResponseEntity<Void> addWorkoutFavourite(@RequestBody FavouriteRequest request, @AuthenticationPrincipal UserDetails authenticatedPrincipal){
        String username = authenticatedPrincipal.getUsername();
        System.out.println(username);
        Long user_id = usersService.getByUsername(username).getId();
        System.out.println(user_id.toString());
        workoutsFavouritesService.addWorkoutFavourite(user_id, request.getWorkout_id());
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/removeWorkoutFavourite")
    public ResponseEntity<Void> removeWorkoutFavourite(@RequestBody FavouriteRequest request, @AuthenticationPrincipal UserDetails authenticatedPrincipal){
        String username = authenticatedPrincipal.getUsername();
        Long user_id = usersService.getByUsername(username).getId();
        workoutsFavouritesService.removeWorkoutFavourite(user_id, request.getWorkout_id());
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/workoutAlreadyFavourite")
    public ResponseEntity<Boolean> workoutAlreadyFavourite(@RequestBody FavouriteRequest request, @AuthenticationPrincipal UserDetails authenticatedPrincipal){
        String username = authenticatedPrincipal.getUsername();
        Long user_id = usersService.getByUsername(username).getId();
        return ResponseEntity.ok().body(workoutsFavouritesService.workoutAlreadyFavourite(user_id, request.getWorkout_id()));
    }
}
