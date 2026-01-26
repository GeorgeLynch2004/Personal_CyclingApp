package CyclingApp.workouts;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class WorkoutEntity {

    private Long id;

    @NotBlank(message = "createdAt cannot be blank")
    private LocalDateTime createdAt;

    @NotBlank(message = "createdBy cannot be blank")
    private String createdBy;

    @NotNull(message = "workoutPrivacy cannot be null")
    private WorkoutPrivacy privacyStatus;

    @NotBlank(message = "name cannot be blank")
    private String name;

    @NotBlank(message = "description cannot be blank")
    private String description;

    @NotEmpty(message = "structure cannot be blank")
    private List<Interval> structure;

    @NotEmpty(message = "targetZones cannot be empty")
    private List<Integer> targetZones;

    public WorkoutEntity(LocalDateTime now, @NotBlank(message = "createdBy cannot be blank on form") String createdBy, WorkoutPrivacy workoutPrivacy, @NotBlank(message = "name cannot be blank") String name, @NotBlank(message = "description cannot be blank") String description, @NotEmpty(message = "structureJson cannot be empty") List<Interval> structure, @NotEmpty(message = "targetZones cannot be empty") List<Integer> targetZones) {
        this.createdAt = now;
        this.createdBy = createdBy;
        this.privacyStatus = WorkoutPrivacy.valueOf(workoutPrivacy.toString());
        this.name=name;
        this.description = description;
        this.structure = structure;
        this.targetZones = targetZones;
    }
}
