package CyclingApp.pages;

import CyclingApp.workouts.IWorkoutsService;
import CyclingApp.workouts.WorkoutEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pages")
public class PagesController {
    private final IWorkoutsService workoutsService;

    @Autowired
    public PagesController(IWorkoutsService workoutsService) {
        this.workoutsService = workoutsService;
    }

    @GetMapping("/home")
    public String home(){
        return "home";
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/workouts")
    public String workouts(){
        return "workouts";
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/workouts/{id}")
    public ModelAndView workoutById(@PathVariable Long id){
        ModelAndView mav = new ModelAndView("workout");

        WorkoutEntity workoutEntity = workoutsService.getWorkoutById(id).getBody();
        mav.addObject("workout", workoutEntity);
        return mav;
    }

    @PreAuthorize("hasAnyRole('MEMBER', 'ADMIN')")
    @GetMapping("/builder")
    public String builder(){
        return "builder";
    }

    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @GetMapping("/signup")
    public String signup(){
        return "signup";
    }

    @PreAuthorize("#username == authentication.name")
    @GetMapping("/profile/{username}")
    public String profile(@PathVariable String username){
        return "profile";
    }
}
