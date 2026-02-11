package CyclingApp.security;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.*;
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
        String errorMessage;

        // Provide specific feedback based on the type of authentication exception
        if (exception instanceof BadCredentialsException) {
            errorMessage = "Invalid username or password. Please try again.";
        } else if (exception instanceof DisabledException) {
            errorMessage = "Your account has been disabled. Please contact support.";
        } else if (exception instanceof LockedException) {
            errorMessage = "Your account has been locked due to multiple failed login attempts.";
        } else if (exception instanceof AccountExpiredException) {
            errorMessage = "Your account has expired. Please contact support.";
        } else if (exception instanceof CredentialsExpiredException) {
            errorMessage = "Your password has expired. Please reset your password.";
        } else {
            errorMessage = "Authentication failed. Please try again.";
        }

        // Store the error message in session to display on login page
        request.getSession().setAttribute("errorMessage", errorMessage);

        // Redirect to login page with error parameter
        response.sendRedirect(request.getContextPath() + "/pages/login?error=true");
    }
}