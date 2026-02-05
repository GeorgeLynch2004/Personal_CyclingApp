package CyclingApp.users;

import org.springframework.security.core.userdetails.User;

import java.util.List;

public interface IUsersService
{
    public List<UserEntity> getAllUsers();
    public UserEntity getByUsername(String username);
    public UserEntity getByEmail(String email);
    public void addUser(SignupForm signupForm);
    public List<UserEntity> getUsersByFilter(Long id, String name, String email, String role);
    public void setUserFtp(int ftp, User user);
}
