package CyclingApp.users;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.time.LocalDateTime;

public class UsersFactory {
    static BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

    public static UserEntity signupFormToUserEntity(SignupForm form){
        return new UserEntity(
            LocalDateTime.now(),
            form.getUsername(),
            form.getEmail(),
            encoder.encode(form.getPassword())
        );
    }
}
