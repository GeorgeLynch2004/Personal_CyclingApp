package CyclingApp.workouts;

import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class WorkoutEntityTests {
    @Test
    void workoutEntityInstantiationTest(){
        List<Interval> structure = new ArrayList<>();
        Interval interval = new Interval(100L, 2, 70);
        structure.add(interval);

        List<Integer> targetZones = new ArrayList<>();
        targetZones.add(1);
        targetZones.add(2);

        LocalDateTime now = LocalDateTime.now();

        WorkoutEntity entity = new WorkoutEntity(
            now,
            "testUser",
            WorkoutPrivacy.PRIVATE,
            "testName",
            "testDescription",
            structure,
            targetZones
        );

        assertEquals(now, entity.getCreatedAt());
        assertEquals("testUser", entity.getCreatedBy());
        assertEquals(WorkoutPrivacy.PRIVATE, entity.getPrivacyStatus());
        assertEquals("testName", entity.getName());
        assertEquals("testDescription", entity.getDescription());
        assertEquals(structure, entity.getStructure());
        assertEquals(targetZones, entity.getTargetZones());

    }
}
