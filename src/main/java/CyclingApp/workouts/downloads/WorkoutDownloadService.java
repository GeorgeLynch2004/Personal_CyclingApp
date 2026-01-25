package CyclingApp.workouts.downloads;
import CyclingApp.workouts.Interval;
import CyclingApp.workouts.WorkoutEntity;
import com.garmin.fit.*;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.stereotype.Service;
import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.util.Date;

@Service
public class WorkoutDownloadService implements IWorkoutDownloadService {

    @Override
    public ByteArrayResource createFitWorkout(int ftp, WorkoutEntity workout) throws RuntimeException, IOException, URISyntaxException {

        try {
            String filename = workout.getName().replace(" ", "_") + ".fit";
            java.io.File file = new java.io.File(filename);

            FileEncoder encoder = new FileEncoder(file, Fit.ProtocolVersion.V1_0);

            // ---- FILE ID ----
            FileIdMesg fileId = new FileIdMesg();
            fileId.setType(File.WORKOUT);
            fileId.setManufacturer(Manufacturer.GARMIN);
            fileId.setProduct(1);
            fileId.setTimeCreated(new DateTime(new Date()));
            encoder.write(fileId);

            // ---- WORKOUT META ----
            WorkoutMesg workoutMesg = new WorkoutMesg();
            workoutMesg.setWktName(workout.getName());
            workoutMesg.setSport(Sport.CYCLING);
            workoutMesg.setSubSport(SubSport.ROAD);
            workoutMesg.setNumValidSteps(workout.getStructure().size());
            encoder.write(workoutMesg);

            // ---- WORKOUT STEPS ----
            int index = 0;
            for (Interval interval : workout.getStructure()) {
                encoder.write(createWorkoutStepMessage(ftp, index++, interval));
            }

            encoder.close();

            byte[] bytes = Files.readAllBytes(file.toPath());
            return new ByteArrayResource(bytes);

        } catch (Exception e) {
            throw new RuntimeException("Failed to create FIT workout", e);
        }
    }

    @Override
    public WorkoutStepMesg createWorkoutStepMessage(int ftp, int index, Interval interval) {

        WorkoutStepMesg msg = new WorkoutStepMesg();

        msg.setMessageIndex(index);

        msg.setDurationType(WktStepDuration.TIME);
        msg.setDurationValue(interval.getDuration() * 1000); // milliseconds to seconds

        msg.setTargetType(WktStepTarget.POWER);

        int[] zone = zoneFromFtp(ftp, interval.getPowerZone());
        int targetWatts = (zone[0] + zone[1]) / 2;
        msg.setTargetValue((long) targetWatts);

        return msg;
    }

    private static int[] zoneFromFtp(int ftp, int zone) {
        return switch (zone) {
            case 1 -> new int[]{0, (int)(ftp * 0.55)};
            case 2 -> new int[]{(int)(ftp * 0.56), (int)(ftp * 0.75)};
            case 3 -> new int[]{(int)(ftp * 0.76), (int)(ftp * 0.90)};
            case 4 -> new int[]{(int)(ftp * 0.91), (int)(ftp * 1.05)};
            case 5 -> new int[]{(int)(ftp * 1.06), (int)(ftp * 1.20)};
            case 6 -> new int[]{(int)(ftp * 1.21), (int)(ftp * 1.50)};
            case 7 -> new int[]{(int)(ftp * 1.51), (int)(ftp * 2.00)};
            default -> throw new IllegalArgumentException("Invalid zone");
        };
    }
}

