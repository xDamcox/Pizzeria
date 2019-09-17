package pl.coderslab.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.app.model.entities.User;

@Controller
@RequestMapping("/login")
public class LoginController {

    @GetMapping
    public String login() {
        return "login";
    }
}
