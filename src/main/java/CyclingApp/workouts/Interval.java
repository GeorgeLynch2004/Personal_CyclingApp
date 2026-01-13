package CyclingApp.workouts;

import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class Interval {
    @NotNull(message = "Interval duration cannot be null.")
    private Long duration;
    @NotNull(message = "Interval powerZone cannot be null.")
    private int powerZone;
    @NotNull(message = "Interval targetCadence cannot be null.")
    private int targetCadence;
}
