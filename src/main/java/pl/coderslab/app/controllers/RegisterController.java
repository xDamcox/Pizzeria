package pl.coderslab.app.controllers;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.app.model.entities.User;
import pl.coderslab.app.model.entities.embedable.Role;
import pl.coderslab.app.repository.UserRepository;

@Controller
@RequestMapping("/register")
public class RegisterController {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public RegisterController(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping
    public String prepareRegistrationPage(Model model){
        model.addAttribute(new User());
        return "login/register";
    }

    @PostMapping
    public String processesRegistrationPage(User user){
        user.setId(null);
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        user.setEnabled(true);
        Role roleUser = new Role();
        roleUser.setAuthority("ROLE_USER");
        user.getRoles().add(roleUser);
        userRepository.save(user);
        return "redirect:/";
    }
}
