package CyclingApp.users;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class UserEntity {
    Long id;
    LocalDateTime createdAt;
    String username;
    String email;
    String password;
    String role;

    public UserEntity(LocalDateTime createdAt, String username, String email, String password){
        this.createdAt = createdAt;
        this.username = username;
        this.email = email;
        this.password = password;
    }
}
