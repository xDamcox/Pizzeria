package pl.coderslab.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.model.entities.Sugestion;
import pl.coderslab.app.model.entities.User;
import pl.coderslab.app.repository.SugestionRepository;
import pl.coderslab.app.repository.UserRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("sugestion")
public class SugestionController {

    SugestionRepository sugestionRepository;
    UserRepository userRepository;


    public SugestionController(SugestionRepository sugestionRepository, UserRepository userRepository) {
        this.sugestionRepository = sugestionRepository;
        this.userRepository = userRepository;
    }

    @ModelAttribute("user")
    public List<User> users(){
        return userRepository.findAll();
    }

    @GetMapping("/add")
    public String sugestionAdd(Sugestion sugestion, Model model){
        model.addAttribute("sugestion", new Sugestion());
        return "sugestion/add";
    }

    @PostMapping("/add")
    public String sugestionPostAdd(@Valid Sugestion sugestion, BindingResult result, User user){
        if(result.hasErrors()){
            return "sugestion/add";
        }
        sugestion.setUser(user);
        sugestionRepository.save(sugestion);
        return "redirect:/sugestion/list?" + user.getId();
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model){
        Sugestion sugestion = sugestionRepository.findById(id).orElse(new Sugestion());
        model.addAttribute("editSugestion", sugestion);
        return "sugestion/edit";
    }

    @PostMapping("/edit/{id}")
    public String postEdit(@Valid Sugestion sugestion, BindingResult result, User user){
        if(result.hasErrors()){
            return "sugestion/add";
        }
        sugestion.setUser(user);
        sugestionRepository.save(sugestion);
        return "redirect:/sugestion/list";
    }

    @GetMapping("/remove/{id}")
    public String getRemoveSugestion(@PathVariable Long id, Model model){
        Sugestion sugestion = sugestionRepository.findById(id).orElse(new Sugestion());
        model.addAttribute("removeSugestion", sugestion);
        return "sugestion/remove";
    }

    @PostMapping("/remove/{id}")
    public String postRemoveSugestion(@RequestParam String delete, Sugestion sugestion){
        if(delete.equals("OK")){
            sugestionRepository.delete(sugestion);
        }
        return "redirect:/sugestion/list";
    }

    @GetMapping("/list")
    public String sugestionList(Sugestion sugestion, Model model){
        model.addAttribute("sugestionList", sugestionRepository.findAll());
        return "sugestion/list";
    }
}
