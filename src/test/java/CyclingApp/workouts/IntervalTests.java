package CyclingApp.workouts;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class IntervalTests {
    @Test
    void IntervalInstantiationTest(){
        Interval interval = new Interval(500L, 4, 80);
        assertEquals(500L, interval.getDuration());
        assertEquals(4, interval.getPowerZone());
        assertEquals(80, interval.getTargetCadence());
    }
}
