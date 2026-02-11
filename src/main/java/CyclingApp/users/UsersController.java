package CyclingApp.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
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
    public ResponseEntity<List<UserDTO>> getAllUsers(){
        List<UserDTO> users = usersService.getAllUsers();
        return ResponseEntity.ok().body(users);
    }

    @PreAuthorize("#username == authentication.name")
    @GetMapping("/getByUsername")
    public ResponseEntity<UserDTO> getByUsername(@RequestParam(required = true) String username){
        UserDTO user = usersService.getByUsername(username);
        return ResponseEntity.ok().body(user);
    }

    @GetMapping("/usernameExists")
    public ResponseEntity<Boolean> usernameExists(@RequestParam(required = true) String username){
        UserDTO user = usersService.getByUsername(username);
        if (user != null) {
            return ResponseEntity.ok().body(true);
        }
        else{
            return ResponseEntity.ok().body(false);
        }
    }

    @GetMapping("/emailExists")
    public ResponseEntity<Boolean> emailExists(@RequestParam(required = true) String email){
        UserDTO user = usersService.getByEmail(email);
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

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/filter")
    public ResponseEntity<List<UserDTO>> getUsersByFilter(
            @RequestParam(required = false) Long id,
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String email,
            @RequestParam(required = false) String role
    ){
        return ResponseEntity.ok().body(
                usersService.getUsersByFilter(id, name, email, role)
        );
    }

    @PreAuthorize("isAuthenticated()")
    @PatchMapping("/setUserFtp")
    public ResponseEntity<Void> setUserFtp(@RequestBody UpdateFtpRequest request, @AuthenticationPrincipal User user){
        usersService.setUserFtp(request.getFtp(), user);
        return ResponseEntity.ok().build();
    }
}
