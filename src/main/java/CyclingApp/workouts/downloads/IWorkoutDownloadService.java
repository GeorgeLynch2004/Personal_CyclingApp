package CyclingApp.workouts.downloads;

import CyclingApp.workouts.Interval;
import CyclingApp.workouts.WorkoutEntity;
import com.garmin.fit.WorkoutStepMesg;
import org.springframework.core.io.ByteArrayResource;

import java.io.IOException;
import java.net.URISyntaxException;

public interface IWorkoutDownloadService {
    public ByteArrayResource createFitWorkout(int ftp, WorkoutEntity workout) throws RuntimeException, IOException, URISyntaxException;
    public WorkoutStepMesg createWorkoutStepMessage(int ftp, int index, Interval interval);
}
