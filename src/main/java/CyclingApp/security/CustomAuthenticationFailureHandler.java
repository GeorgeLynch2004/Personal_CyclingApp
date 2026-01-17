package CyclingApp.security;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.AuthenticationException;
import
        org.springframework.security.web.authentication.AuthenticationFailureHandler;
import java.io.IOException;
public class CustomAuthenticationFailureHandler implements
        AuthenticationFailureHandler {
    @Override
    public void onAuthenticationFailure(
            HttpServletRequest request,
            HttpServletResponse response,
            AuthenticationException exception)
            throws IOException {
        System.out.println("Authentication Failure Handler invoked: " +
                exception.getMessage());
        System.out.println("Request URI: " + request.getRequestURI());
        response.sendRedirect("/pages/login?error");
    }
}