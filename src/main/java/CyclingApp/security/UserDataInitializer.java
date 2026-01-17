package CyclingApp.security;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;

@Configuration
public class UserDataInitializer {

    @Bean
    CommandLineRunner initUsers(
            UserDetailsManager userDetailsManager,
            PasswordEncoder passwordEncoder,
            JdbcTemplate jdbcTemplate) {

        return args -> {

            if (!userDetailsManager.userExists("admin")) {
                userDetailsManager.createUser(
                        User.withUsername("admin")
                                .password(passwordEncoder.encode("password"))
                                .roles("ADMIN")
                                .build()
                );

                jdbcTemplate.update(
                        "UPDATE users SET email = ? WHERE username = ?",
                        "admin@email.com",
                        "admin"
                );
            }

            if (!userDetailsManager.userExists("user")) {
                userDetailsManager.createUser(
                        User.withUsername("user")
                                .password(passwordEncoder.encode("password"))
                                .roles("USER")
                                .build()
                );

                jdbcTemplate.update(
                        "UPDATE users SET email = ? WHERE username = ?",
                        "user@email.com",
                        "user"
                );
            }
        };
    }
}
