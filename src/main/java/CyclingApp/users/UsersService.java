package CyclingApp.users;

import CyclingApp.common.exceptions.EmailAlreadyExistsException;
import CyclingApp.common.exceptions.UsernameAlreadyExistsException;
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
    public void addUser(SignupForm signupForm){
        if(usersRepository.getByUsername(signupForm.getUsername()) != null) throw new UsernameAlreadyExistsException("Username is already in use.");
        if(usersRepository.getByEmail(signupForm.getEmail()) != null) throw new EmailAlreadyExistsException("Email is already in use.");
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
