package CyclingApp.workouts.downloads;

import CyclingApp.users.IUsersRepository;
import CyclingApp.users.IUsersService;
import CyclingApp.workouts.IWorkoutsService;
import CyclingApp.workouts.WorkoutEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.net.URISyntaxException;

@RestController
@RequestMapping("/workouts/download")
public class WorkoutDownloadController {

    public IWorkoutDownloadService workoutDownloadService;
    public IWorkoutsService workoutsService;
    private final IUsersService usersService;

    @Autowired
    public WorkoutDownloadController(IWorkoutDownloadService workoutDownloadService, IWorkoutsService workoutsService, IUsersService usersService){
        this.workoutDownloadService = workoutDownloadService;
        this.workoutsService = workoutsService;
        this.usersService = usersService;
    }

    @GetMapping("/{id}")
    @PreAuthorize("hasAnyRole('MEMBER', 'ADMIN')")
    @CrossOrigin(exposedHeaders = HttpHeaders.CONTENT_DISPOSITION)
    public ResponseEntity<Resource> download(@PathVariable Long id, @AuthenticationPrincipal User user) throws IOException, URISyntaxException {
        WorkoutEntity workout = workoutsService.getWorkoutById(id, user);

        if (workout == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).build();
        }

        ByteArrayResource resource = workoutDownloadService.createFitWorkout(
                usersService.getByUsername(user.getUsername()).getFtp(),
                workout
        );
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\""+workout.getName().replace(" ", "_") + ".fit" + "\"")
                .contentType(MediaType.parseMediaType("application/octet-stream"))
                .contentLength(resource.contentLength())
                .body(resource);

    }
}
