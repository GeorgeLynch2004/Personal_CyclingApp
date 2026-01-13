package CyclingApp.workouts;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class WorkoutForm {
    @NotBlank(message = "name cannot be blank")
    private String name;
    @NotBlank(message = "description cannot be blank")
    private String description;
    @NotBlank(message = "structureJson cannot be blank")
    private List<Interval> structure;
    @NotBlank(message = "targetZones cannot be blank")
    private List<Integer> targetZones;
}
