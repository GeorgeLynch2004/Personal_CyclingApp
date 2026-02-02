package CyclingApp.users;

import CyclingApp.workouts.Interval;
import CyclingApp.workouts.WorkoutEntity;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import tools.jackson.core.type.TypeReference;
import tools.jackson.databind.ObjectMapper;

import java.sql.SQLException;
import java.util.ArrayList;
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
    public List<UserEntity> getAllUsers(){
        String sql = "SELECT * FROM users";
        try{
            return jdbcTemplate.query(sql, rowMapper);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
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
    public UserEntity getByEmail(String email){
        String sql = "SELECT id, created_at, username, email, password, usertype FROM users WHERE email=?";
        try{
            return jdbcTemplate.queryForObject(sql, rowMapper, email);
        } catch (EmptyResultDataAccessException e){
            return null;
        }
    }

    @Override
    public void addUser(UserEntity user){
        String sql = "INSERT INTO users (created_at, username, email, password) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, user.getCreatedAt(), user.getUsername(), user.getEmail(), user.getPassword());
    }

    @Override
    public List<UserEntity> getUsersByFilter(Long id, String name, String email, String role){
        StringBuilder sql = new StringBuilder("SELECT * FROM users WHERE 1=1");
        List<Object> params = new ArrayList<>();
        if(id != null){
            sql.append(" AND id = ?");
            params.add(id);
        }
        if(name != null){
            sql.append(" AND username LIKE ?");
            params.add("%" + name.trim() + "%");
        }
        if(email != null){
            sql.append(" AND email LIKE ?");
            params.add("%"+email.trim()+"%");
        }
        if(role != null){
            sql.append(" AND usertype = ?");
            params.add("%"+role.trim()+"%");
        }
        try{
            return jdbcTemplate.query(sql.toString(), params.toArray(), rowMapper);
        } catch (EmptyResultDataAccessException e){
            return null;
        }
    }
}
