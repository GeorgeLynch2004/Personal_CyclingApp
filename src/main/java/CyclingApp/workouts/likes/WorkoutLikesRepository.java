package CyclingApp.workouts.likes;

import CyclingApp.workouts.Interval;
import CyclingApp.workouts.WorkoutEntity;
import CyclingApp.workouts.WorkoutPrivacy;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import tools.jackson.core.type.TypeReference;
import tools.jackson.databind.ObjectMapper;

import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public class WorkoutLikesRepository implements IWorkoutLikesRepository {

    private final JdbcTemplate jdbcTemplate;
    private final ObjectMapper objectMapper =  new ObjectMapper();
    private RowMapper<WorkoutEntity> rowMapper;

    public WorkoutLikesRepository(JdbcTemplate jdbcTemplate) {
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
    public int getLikesByWorkoutId(Long id){
        String sql = "select count(*) from likes where workout_id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, Integer.class, id);
        } catch (EmptyResultDataAccessException e) {
            return 0;
        }
    }

    @Override
    public int getDislikesByWorkoutId(Long id){
        String sql = "select count(*) from dislikes where workout_id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, Integer.class, id);
        }
        catch (EmptyResultDataAccessException e) {
            return 0;
        }
    }

    @Override
    public void addLike(Long userId, Long workoutId) {
        String sql = "INSERT INTO likes (created_at, user_id, workout_id) VALUES (?, ?, ?)";
        try {
            LocalDateTime dt = LocalDateTime.now();
            jdbcTemplate.update(sql, dt, userId, workoutId);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void addDislike(Long userId, Long workoutId) {
        String sql = "INSERT INTO dislikes (created_at, user_id, workout_id) VALUES (?, ?, ?)";
        try {
            LocalDateTime dt = LocalDateTime.now();
            jdbcTemplate.update(sql, dt, userId, workoutId);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removeLike(Long userId, Long workoutId) {
        String sql = "DELETE FROM likes WHERE user_id = ? AND  workout_id = ?";
        try {
            jdbcTemplate.update(sql, userId, workoutId);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removeDislike(Long userId, Long workoutId) {
        String sql = "DELETE FROM dislikes WHERE user_id = ? AND  workout_id = ?";
        try {
            jdbcTemplate.update(sql, userId, workoutId);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean userLikedWorkout(Long userId, Long workoutId) {
        String sql = "select count(*) from likes where user_id = ? AND  workout_id = ?";
        try {
             Integer count = jdbcTemplate.queryForObject(sql, Integer.class, userId, workoutId);
             return count > 0;
        } catch (Exception e) {
            return false;
        }
    }

    @Override
    public boolean userDislikedWorkout(Long userId, Long workoutId) {
        String sql = "select count(*) from dislikes where user_id = ? AND workout_id = ?";
        try {
            Integer count =  jdbcTemplate.queryForObject(sql, Integer.class, userId, workoutId);
            return count > 0;
        } catch (Exception e) {
            return false;
        }
    }
}
