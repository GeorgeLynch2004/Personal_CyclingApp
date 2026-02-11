package CyclingApp.users;

import org.springframework.security.core.userdetails.User;

import java.util.List;

public interface IUsersService
{
    public List<UserDTO> getAllUsers();
    public UserDTO getByUsername(String username);
    public UserDTO getByEmail(String email);
    public void addUser(SignupForm signupForm);
    public List<UserDTO> getUsersByFilter(Long id, String name, String email, String role);
    public void setUserFtp(int ftp, User user);
}
