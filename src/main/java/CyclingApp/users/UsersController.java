package CyclingApp.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UsersController {

    private final IUsersService usersService;

    public UsersController(IUsersService usersService){
        this.usersService = usersService;
    }

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/getAll")
    public ResponseEntity<List<UserEntity>> getAllUsers(){
        List<UserEntity> users = usersService.getAllUsers();
        return ResponseEntity.ok().body(users);
    }

    @PreAuthorize("#username == authentication.name")
    @GetMapping("/getByUsername")
    public ResponseEntity<UserEntity> getByUsername(@RequestParam(required = true) String username){
        UserEntity user = usersService.getByUsername(username);
        return ResponseEntity.ok().body(user);
    }

    @GetMapping("/usernameExists")
    public ResponseEntity<Boolean> usernameExists(@RequestParam(required = true) String username){
        UserEntity user = usersService.getByUsername(username);
        if (user != null) {
            return ResponseEntity.ok().body(true);
        }
        else{
            return ResponseEntity.ok().body(false);
        }
    }

    @GetMapping("/emailExists")
    public ResponseEntity<Boolean> emailExists(@RequestParam(required = true) String email){
        UserEntity user = usersService.getByEmail(email);
        if (user != null){
            return ResponseEntity.ok().body(true);
        }
        else{
            return ResponseEntity.ok().body(false);
        }
    }

    @PreAuthorize("isAnonymous()")
    @PostMapping("/signup")
    public ResponseEntity<Void> addUser(@ModelAttribute SignupForm signupForm){
        usersService.addUser(signupForm);
        return ResponseEntity.ok().build();
    }
}
