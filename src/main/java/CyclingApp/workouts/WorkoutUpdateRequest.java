package CyclingApp.workouts;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;


@Data
@AllArgsConstructor
public class WorkoutUpdateRequest {
    @NotNull(message = "workoutId cannot be null")
    private Long id;

    @NotNull(message = "workoutPrivacy cannot be null")
    private WorkoutPrivacy privacyStatus;

    @NotBlank(message = "name cannot be blank")
    private String name;

    @NotBlank(message = "description cannot be blank")
    private String description;
}
