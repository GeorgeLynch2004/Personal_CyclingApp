package CyclingApp.users;

import CyclingApp.workouts.Interval;
import CyclingApp.workouts.WorkoutEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import tools.jackson.core.type.TypeReference;
import tools.jackson.databind.ObjectMapper;

import java.sql.SQLException;
import java.util.List;

@Repository
public class UsersRepository implements IUsersRepository{
    private final JdbcTemplate jdbcTemplate;
    private RowMapper<UserEntity> rowMapper;

    @Autowired
    public UsersRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
        setUserEntityRowMapper();
    }

    private void setUserEntityRowMapper() {
        rowMapper = (rs, i) -> {
            try {
                return new UserEntity(
                        rs.getLong("id"),
                        rs.getTimestamp("created_at").toLocalDateTime(),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("usertype"));
            } catch (Exception e) {
                throw new SQLException("Failed to parse user from db", e);
            }
        };
    }

    @Override
    public UserEntity getByUsername(String username){
        String sql = "SELECT id, created_at, username, email, password, usertype FROM users WHERE username=?";
        try{
            return jdbcTemplate.queryForObject(sql, rowMapper, username); // returns a EmptyResultDataAccessException rather than null
        } catch (EmptyResultDataAccessException e){
            return null;
        }

    }

    @Override
    public void addUser(UserEntity user){
        String sql = "INSERT INTO users (created_at, username, email, password) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, user.getCreatedAt(), user.getUsername(), user.getEmail(), user.getPassword());
    }
}
