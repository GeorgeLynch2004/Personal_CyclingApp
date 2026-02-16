package CyclingApp.users;

import CyclingApp.common.exceptions.EmailAlreadyExistsException;
import CyclingApp.common.exceptions.UsernameAlreadyExistsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

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

    @PreAuthorize("isAnonymous()")
    @PostMapping("/signup")
    public ResponseEntity<String> addUser(@ModelAttribute SignupForm signupForm) {
        try {
            usersService.addUser(signupForm);
            return ResponseEntity.ok().build();
        } catch (UsernameAlreadyExistsException e) {
            return ResponseEntity.badRequest().body("Username is already in use.");
        } catch (EmailAlreadyExistsException e) {
            return ResponseEntity.badRequest().body("Email is already in use.");
        }
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
