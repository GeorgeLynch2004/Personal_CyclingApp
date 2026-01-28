package CyclingApp.users;

import java.util.List;

public interface IUsersService
{
    public List<UserEntity> getAllUsers();
    public UserEntity getByUsername(String username);
    public UserEntity getByEmail(String email);
    public void addUser(SignupForm signupForm);
}
