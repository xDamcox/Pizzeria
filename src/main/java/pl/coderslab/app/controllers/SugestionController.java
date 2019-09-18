package pl.coderslab.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.app.model.entities.Sugestion;
import pl.coderslab.app.repository.SugestionRepository;

import javax.validation.Valid;

@Controller
@RequestMapping("/sugestion")
public class SugestionController {

    SugestionRepository sugestionRepository;

    public SugestionController(SugestionRepository sugestionRepository) {
        this.sugestionRepository = sugestionRepository;
    }

    @GetMapping("/add")
    public String sugestionAdd(Sugestion sugestion, Model model){
        model.addAttribute("sugestion", new Sugestion());
        return "sugestion/add";
    }

    @PostMapping("/add")
    public String sugestionPostAdd(@Valid Sugestion sugestion, BindingResult result){
        if(result.hasErrors()){
            return "sugestion/add";
        }
        sugestionRepository.save(sugestion);
        return "redirect:sugestion/list";
    }

    @GetMapping("/list")
    public String sugestionList(Sugestion sugestion, Model model){
        model.addAttribute("sugestionList", sugestionRepository.findAll());
        return "sugestion/list";
    }
}
