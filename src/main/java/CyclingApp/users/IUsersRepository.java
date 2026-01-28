package CyclingApp.users;

import java.util.List;

public interface IUsersRepository
{
    public List<UserEntity> getAllUsers();
    public UserEntity getByUsername(String username);
    public UserEntity getByEmail(String email);
    public void addUser(UserEntity user);
}
