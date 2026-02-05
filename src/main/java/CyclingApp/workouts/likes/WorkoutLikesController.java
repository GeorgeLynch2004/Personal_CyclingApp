package CyclingApp.workouts.likes;


import CyclingApp.workouts.IWorkoutsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("workouts/likes")
public class WorkoutLikesController {
    private final IWorkoutLikesService  workoutLikesService;

    @Autowired
    public WorkoutLikesController(IWorkoutLikesService workoutLikesService) {
        this.workoutLikesService = workoutLikesService;
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/{workout_id}/like")
    public ResponseEntity<Void> likeWorkout(@PathVariable Long workout_id, @AuthenticationPrincipal User user) {
        workoutLikesService.likeWorkout(workout_id, user);
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/{workout_id}/unlike")
    public ResponseEntity<Void> unlikeWorkout(@PathVariable Long workout_id, @AuthenticationPrincipal User user) {
        workoutLikesService.unlikeWorkout(workout_id, user);
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/{workout_id}/dislike")
    public ResponseEntity<Void> dislikeWorkout(@PathVariable Long workout_id, @AuthenticationPrincipal User user) {
        workoutLikesService.dislikeWorkout(workout_id, user);
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/{workout_id}/undislike")
    public ResponseEntity<Void>  undislikeWorkout(@PathVariable Long workout_id, @AuthenticationPrincipal User user) {
        workoutLikesService.undislikeWorkout(workout_id, user);
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/{workout_id}/isLiked")
    public ResponseEntity<Boolean> usersLikedWorkout(@PathVariable Long workout_id, @AuthenticationPrincipal User user) {
        return ResponseEntity.ok(workoutLikesService.usersLikedWorkout(workout_id, user));
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/{workout_id}/isDisliked")
    public ResponseEntity<Boolean> usersDislikedWorkout(@PathVariable Long workout_id, @AuthenticationPrincipal User user) {
        return ResponseEntity.ok(workoutLikesService.usersDislikedWorkout(workout_id, user));
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/{workout_id}/likes")
    public ResponseEntity<Integer> getLikes(@PathVariable Long workout_id) {
        return ResponseEntity.ok().body(workoutLikesService.getLikesCount(workout_id));
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/{workout_id}/dislikes")
    public ResponseEntity<Integer> getDislikes(@PathVariable Long workout_id) {
        return ResponseEntity.ok().body(workoutLikesService.getDislikesCount(workout_id));
    }
}
