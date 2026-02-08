package CyclingApp.workouts;

import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.userdetails.User;
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
                        rs.getString("created_by"),
                        WorkoutPrivacy.valueOf(rs.getString("privacy_status")),
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
    public List<WorkoutEntity> getAllWorkouts() {
        String sql = "SELECT * FROM workouts";
        return jdbcTemplate.query(sql, rowMapper);
    }

    @Override
    public List<WorkoutEntity> getPublicWorkouts(){
        String sql = "SELECT * FROM workouts WHERE privacy_status='PUBLIC'";
        try{
            return jdbcTemplate.query(sql, rowMapper);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Override
    public WorkoutEntity getWorkoutById(long id) {
        String sql = "SELECT * FROM workouts WHERE id = ?";

        try {
            return jdbcTemplate.queryForObject(sql, rowMapper, id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Override
    public List<WorkoutEntity> getWorkoutsByCreator(User user){
        String sql = "SELECT * FROM workouts WHERE created_by = ?";
        try {
            return jdbcTemplate.query(sql, rowMapper, user.getUsername());
        } catch (EmptyResultDataAccessException e){
            return null;
        }
    }

    @Override
    public List<WorkoutEntity> getWorkoutsByFilter(
            String name,
            String description,
            List<Integer> targetZones,
            Long id,
            LocalDateTime createdAt,
            String createdBy,
            WorkoutPrivacy workoutPrivacy
    ) {

        StringBuilder sql = new StringBuilder("""
        SELECT *
        FROM workouts
        WHERE 1=1
        """);

        List<Object> params = new ArrayList<>();

        if (id != null) {
            sql.append(" AND id = ?");
            params.add(id);
        }

        if (name != null && !name.isBlank()) {
            sql.append(" AND name LIKE ?");
            params.add("%" + name.trim() + "%");
        }

        if (description != null && !description.isBlank()) {
            sql.append(" AND description LIKE ?");
            params.add("%" + description.trim() + "%");
        }

        if (targetZones != null && !targetZones.isEmpty()) {
            sql.append(" AND JSON_OVERLAPS(target_zones, ?)");
            params.add(objectMapper.writeValueAsString(targetZones));
        }

        if (createdAt != null) {
            LocalDateTime startOfDay = createdAt.toLocalDate().atStartOfDay();
            LocalDateTime endOfDay = startOfDay.plusDays(1);

            sql.append(" AND created_at >= ? AND created_at < ?");
            params.add(startOfDay);
            params.add(endOfDay);
        }

        if (createdBy != null && !createdBy.isBlank()) {
            sql.append(" AND created_by = ?");
            params.add(createdBy.trim());
        }

        if (workoutPrivacy != null) {
            sql.append(" AND privacy_status = ?");
            params.add(workoutPrivacy.name());
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
        (created_at, created_by, privacy_status, name, description, structure, target_zones)
        VALUES (?, ?, ?, ?, ?, ?, ?)
        """;

        jdbcTemplate.update(
                sql,
                Timestamp.valueOf(workout.getCreatedAt()),
                workout.getCreatedBy(),
                workout.getPrivacyStatus().toString(),
                workout.getName(),
                workout.getDescription(),
                objectMapper.writeValueAsString(workout.getStructure()),
                objectMapper.writeValueAsString(workout.getTargetZones())
        );
    }

    @Override
    public void deleteWorkout(Long id, User user){
        String sql = "DELETE FROM workouts WHERE id=? AND created_by=?";
        jdbcTemplate.update(sql, id, user.getUsername());
    }

    @Override
    public int updateWorkout(Long id, WorkoutEntity workout) {

        String sql = """
        UPDATE workouts
        SET
            name = ?,
            description = ?,
            privacy_status = ?,
            structure = CAST(? AS JSON),
            target_zones = CAST(? AS JSON)
        WHERE id = ?
        """;

        return jdbcTemplate.update(
                sql,
                workout.getName(),
                workout.getDescription(),
                workout.getPrivacyStatus().name(),
                workout.getStructure(),
                workout.getTargetZones(),
                id
        );
    }

}
