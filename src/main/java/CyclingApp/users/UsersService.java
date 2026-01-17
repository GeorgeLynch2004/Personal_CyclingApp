package CyclingApp.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersService implements IUsersService{

    private final IUsersRepository usersRepository;

    @Autowired
    public UsersService(IUsersRepository usersRepository){
        this.usersRepository = usersRepository;
    }

    @Override
    public UserEntity getByUsername(String username){
        return usersRepository.getByUsername(username);
    }

    @Override
    public void addUser(SignupForm signupForm){
        UserEntity user = UsersFactory.signupFormToUserEntity(signupForm);
        usersRepository.addUser(user);
    }
}
