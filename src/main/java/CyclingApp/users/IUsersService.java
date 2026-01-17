package CyclingApp.users;

public interface IUsersService
{
    public UserEntity getByUsername(String username);
    public void addUser(SignupForm signupForm);
}
