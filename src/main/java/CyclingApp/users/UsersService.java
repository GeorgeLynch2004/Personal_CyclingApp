package CyclingApp.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersService implements IUsersService{

    private final IUsersRepository usersRepository;

    @Autowired
    public UsersService(IUsersRepository usersRepository){
        this.usersRepository = usersRepository;
    }

    @Override
    public List<UserEntity> getAllUsers(){
        return usersRepository.getAllUsers();
    }

    @Override
    public UserEntity getByUsername(String username){
        return usersRepository.getByUsername(username);
    }

    @Override
    public UserEntity getByEmail(String email) {return usersRepository.getByEmail(email);}

    @Override
    public void addUser(SignupForm signupForm){
        UserEntity user = UsersFactory.signupFormToUserEntity(signupForm);
        usersRepository.addUser(user);
    }

    @Override
    public List<UserEntity> getUsersByFilter(Long id, String name, String email, String role){
        return usersRepository.getUsersByFilter(id, name, email, role);
    }

    @Override
    public void setUserFtp(int ftp, User user){
        usersRepository.setUserFtpById(ftp, usersRepository.getByUsername(user.getUsername()).getId());
    }
}
