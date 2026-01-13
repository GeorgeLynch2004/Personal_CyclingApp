package CyclingApp.workouts;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class WorkoutEntity {
    private Long id;
    @NotBlank(message = "createdAt cannot be blank")
    private LocalDateTime createdAt;
    @NotBlank(message = "name cannot be blank")
    private String name;
    @NotBlank(message = "description cannot be blank")
    private String description;
    @NotEmpty(message = "structure cannot be blank")
    private List<Interval> structure;
    @NotEmpty(message = "targetZones cannot be empty")
    private List<Integer> targetZones;

    public WorkoutEntity(LocalDateTime createdAt, String name, String description, List<Interval> structure, List<Integer> targetZones) {
        this.createdAt = createdAt;
        this.name = name;
        this.description = description;
        this.structure = structure;
        this.targetZones = targetZones;
    }

    public WorkoutEntity(Long id, LocalDateTime createdAt, String name, String description, List<Interval> structure, List<Integer> targetZones) {
        this.id = id;
        this.createdAt = createdAt;
        this.name = name;
        this.description = description;
        this.structure = structure;
        this.targetZones = targetZones;
    }
}
