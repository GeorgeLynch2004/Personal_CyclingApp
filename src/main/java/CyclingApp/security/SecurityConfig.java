package CyclingApp.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutHandler;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity(prePostEnabled = true)
public class SecurityConfig {

    private static final String[] ENDPOINTS_WHITELIST = {
            "/scripts/**",
            "/index.html",
            "/pages/**",
            "/error/**",
            "/login",
            "/users/**",
            "/workouts/**"
    };

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers(ENDPOINTS_WHITELIST).permitAll()
                        .anyRequest().authenticated()
                )
                .formLogin(form -> form
                        .loginPage("/pages/login")
                        .loginProcessingUrl("/login")
                        .defaultSuccessUrl("/pages/home")
                        .failureHandler(new CustomAuthenticationFailureHandler())
                        .successHandler(new CustomAuthenticationSuccessHandler())
                        .permitAll()
                )
                .logout(logout -> logout
                        .logoutUrl("/logout")
                        .logoutSuccessUrl("/pages/home")
                );

        return http.build();
    }

    @Bean
    CommandLineRunner verifyPassword(PasswordEncoder encoder) {
        return args -> {
            String hashFromDb = "$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK";
            System.out.println(encoder.matches("password", hashFromDb));
        };
    }

    @Bean
    CommandLineRunner generateHash(PasswordEncoder encoder) {
        return args -> {
            String hash = encoder.encode("password");
            System.out.println(hash);
        };
    }



    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public UserDetailsService userDetailsService(DataSource dataSource) {
        JdbcUserDetailsManager manager = new JdbcUserDetailsManager(dataSource);

        // REQUIRED SHAPE: username, password, enabled
        manager.setUsersByUsernameQuery("""
        SELECT username, password, true
        FROM users
        WHERE username = ?
    """);

        // REQUIRED SHAPE: username, authority
        manager.setAuthoritiesByUsernameQuery("""
        SELECT username, CONCAT('ROLE_', usertype)
        FROM users
        WHERE username = ?
    """);

        return manager;
    }

}


