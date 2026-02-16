package CyclingApp.users;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class UserDTO {
    Long id;
    LocalDateTime createdAt;
    String username;
    String email;
    String role;
    int ftp;
}
