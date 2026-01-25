package CyclingApp.workouts.downloads;

import CyclingApp.workouts.IWorkoutsService;
import CyclingApp.workouts.WorkoutEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.net.URISyntaxException;

@Controller
@RequestMapping("/workouts/download")
public class WorkoutDownloadController {

    public IWorkoutDownloadService workoutDownloadService;
    public IWorkoutsService workoutsService;

    @Autowired
    public WorkoutDownloadController(IWorkoutDownloadService workoutDownloadService, IWorkoutsService workoutsService){
        this.workoutDownloadService = workoutDownloadService;
        this.workoutsService = workoutsService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Resource> download(@PathVariable Long id, @AuthenticationPrincipal User user) throws IOException, URISyntaxException {
        WorkoutEntity workout = workoutsService.getWorkoutById(id, user);

        ByteArrayResource resource = workoutDownloadService.createFitWorkout(
                250,
                workout
        );
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\""+workout.getName().replace(" ", "_") + ".fit" + "\"")
                .contentType(MediaType.parseMediaType("application/octet-stream"))
                .contentLength(resource.contentLength())
                .body(resource);

    }
}
