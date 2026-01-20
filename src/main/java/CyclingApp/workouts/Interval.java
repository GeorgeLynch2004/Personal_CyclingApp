package CyclingApp.workouts;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Interval {
    @NotNull(message = "Interval duration cannot be null.")
    private Long duration;
    @NotNull(message = "Interval powerZone cannot be null.")
    private int powerZone;
    private int targetCadence;
}
