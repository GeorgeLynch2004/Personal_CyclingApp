package CyclingApp.workouts;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import tools.jackson.core.type.TypeReference;
import tools.jackson.databind.ObjectMapper;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Repository
public class WorkoutsRepository implements IWorkoutsRepository {

    private final JdbcTemplate jdbcTemplate;
    private final ObjectMapper objectMapper =  new ObjectMapper();
    private RowMapper<WorkoutEntity> rowMapper;

    public WorkoutsRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
        setWorkoutEntityRowMapper();
    }

    private void setWorkoutEntityRowMapper() {
        rowMapper = (rs, i) -> {
            try {
                return new WorkoutEntity(
                        rs.getLong("id"),
                        rs.getTimestamp("created_at").toLocalDateTime(),
                        rs.getString("name"),
                        rs.getString("description"),
                        objectMapper.readValue(
                                rs.getString("structure"),
                                new TypeReference<List<Interval>>() {}
                        ),
                        objectMapper.readValue(
                                rs.getString("target_zones"),
                                new TypeReference<List<Integer>>() {}
                        )
                );
            } catch (Exception e) {
                throw new SQLException("Failed to parse workout JSON", e);
            }
        };
    }

    @Override
    public ResponseEntity<List<WorkoutEntity>> getAllWorkouts() {
        String sql = "SELECT * FROM workouts";
        return ResponseEntity.ok().body(jdbcTemplate.query(sql, rowMapper));
    }

    @Override
    public ResponseEntity<WorkoutEntity> getWorkoutById(long id) {
        String sql = "SELECT * FROM workouts WHERE id = ?";

        try {
            WorkoutEntity workout = jdbcTemplate.queryForObject(sql, rowMapper, id);
            return ResponseEntity.ok(workout);
        } catch (EmptyResultDataAccessException e) {
            return ResponseEntity.notFound().build();
        }
    }

    @Override
    public List<WorkoutEntity> getWorkoutsByFilter(
            String name,
            String description,
            List<Integer> targetZones
    ) {
        StringBuilder sql = new StringBuilder("""
        SELECT *
        FROM workouts
        WHERE 1=1
        """);

        List<Object> params = new ArrayList<>();

        if (name != null && !name.isBlank()) {
            sql.append(" AND LOWER(name) LIKE ?");
            params.add("%" + name.toLowerCase() + "%");
        }

        if (description != null && !description.isBlank()) {
            sql.append(" AND LOWER(description) LIKE ?");
            params.add("%" + description.toLowerCase() + "%");
        }

        if (targetZones != null && !targetZones.isEmpty()) {
            sql.append(" AND JSON_OVERLAPS(target_zones, ?)");
            params.add(objectMapper.writeValueAsString(targetZones));
        }

        return jdbcTemplate.query(
                sql.toString(),
                rowMapper,
                params.toArray()
        );
    }

    @Override
    public void addWorkout(WorkoutEntity workout) {
        String sql = """
        INSERT INTO workouts
        (created_at, name, description, structure, target_zones)
        VALUES (?, ?, ?, ?, ?)
        """;

        jdbcTemplate.update(
                sql,
                Timestamp.valueOf(workout.getCreatedAt()),
                workout.getName(),
                workout.getDescription(),
                objectMapper.writeValueAsString(workout.getStructure()),
                objectMapper.writeValueAsString(workout.getTargetZones())
        );
    }
}
