package CyclingApp.workouts.favourites;

import CyclingApp.workouts.Interval;
import CyclingApp.workouts.WorkoutEntity;
import CyclingApp.workouts.WorkoutPrivacy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import tools.jackson.core.type.TypeReference;
import tools.jackson.databind.ObjectMapper;

import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public class WorkoutFavouritesRepository implements IWorkoutFavouritesRepository {
    private final JdbcTemplate jdbcTemplate;
    private final ObjectMapper objectMapper =  new ObjectMapper();
    private RowMapper<WorkoutEntity> rowMapper;

    public WorkoutFavouritesRepository(JdbcTemplate jdbcTemplate) {
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
    public List<WorkoutEntity> getWorkoutFavouritesById(Long userId){
        String sql = "SELECT w.* FROM favourites f JOIN workouts w ON f.workout_id = w.id WHERE f.user_id = ?";
        return jdbcTemplate.query(sql, rowMapper, userId);
    }

    @Override
    public void addWorkoutFavourite(Long user_id, Long workout_id){
        String sql = "INSERT INTO favourites (created_at, user_id, workout_id) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, LocalDateTime.now(), user_id, workout_id);
    }

    @Override
    public void removeWorkoutFavourite(Long user_id, Long workout_id){
        String sql = "DELETE FROM favourites WHERE user_id=? AND workout_id=?";
        jdbcTemplate.update(sql, user_id, workout_id);
    }

    @Override
    public boolean workoutAlreadyFavourite(Long userId, Long workoutId) {
        String sql = """
        SELECT EXISTS (
            SELECT 1
            FROM favourites
            WHERE user_id = ? AND workout_id = ?
        )
        """;

        return Boolean.TRUE.equals(
                jdbcTemplate.queryForObject(sql, Boolean.class, userId, workoutId)
        );
    }
}
