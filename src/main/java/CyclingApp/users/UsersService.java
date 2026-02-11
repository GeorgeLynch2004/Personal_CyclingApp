package CyclingApp.users;

import CyclingApp.workouts.WorkoutEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
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
    public List<UserDTO> getAllUsers() {
        return usersRepository.getAllUsers()
                .stream()
                .map(UsersFactory::UserEntityToUserDTO)
                .toList();
    }


    @Override
    public UserDTO getByUsername(String username) {
        UserEntity entity = usersRepository.getByUsername(username);

        if (entity == null){
            throw new UsernameNotFoundException("User was not found.");
        }

        return UsersFactory.UserEntityToUserDTO(entity);
    }

    @Override
    public UserDTO getByEmail(String email) {
        UserEntity entity = usersRepository.getByEmail(email);

        if (entity == null){
            throw new UsernameNotFoundException("User was not found.");
        }

        return UsersFactory.UserEntityToUserDTO(entity);
    }



    @Override
    public void addUser(SignupForm signupForm){
        UserEntity user = UsersFactory.signupFormToUserEntity(signupForm);
        usersRepository.addUser(user);
    }

    @Override
    public List<UserDTO> getUsersByFilter(Long id, String name, String email, String role){
        return usersRepository.getUsersByFilter(id, name, email, role).stream()
                .map(UsersFactory::UserEntityToUserDTO)
                .toList();
    }

    @Override
    public void setUserFtp(int ftp, User user){
        usersRepository.setUserFtpById(ftp, usersRepository.getByUsername(user.getUsername()).getId());
    }
}
