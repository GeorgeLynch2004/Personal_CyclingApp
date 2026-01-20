package CyclingApp.workouts;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
public class WorkoutForm {

    @NotBlank(message = "name cannot be blank")
    private String name;

    @NotBlank(message = "createdBy cannot be blank on form")
    private String createdBy;

    @NotBlank(message = "description cannot be blank")
    private String description;

    @NotEmpty(message = "structureJson cannot be empty")
    private List<Interval> structure;

    @NotEmpty(message = "targetZones cannot be empty")
    private List<Integer> targetZones;

}
