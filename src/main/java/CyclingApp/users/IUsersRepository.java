package CyclingApp.users;

public interface IUsersRepository
{
    public UserEntity getByUsername(String username);
    public UserEntity getByEmail(String email);
    public void addUser(UserEntity user);
}
