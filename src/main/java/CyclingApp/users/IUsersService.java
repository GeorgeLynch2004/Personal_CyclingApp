package CyclingApp.users;

public interface IUsersService
{
    public UserEntity getByUsername(String username);
    public UserEntity getByEmail(String email);
    public void addUser(SignupForm signupForm);
}
