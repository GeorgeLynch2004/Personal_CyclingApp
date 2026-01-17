package CyclingApp.users;

public interface IUsersRepository
{
    public UserEntity getByUsername(String username);
    public void addUser(UserEntity user);
}
