package pl.coderslab.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.app.model.entities.Pizza;
import pl.coderslab.app.repository.PizzaRepository;

import javax.validation.Valid;


@Controller
@RequestMapping("/pizza")
public class PizzaController {

    PizzaRepository pizzaRepository;

    public PizzaController(PizzaRepository pizzaRepository) {
        this.pizzaRepository = pizzaRepository;
    }

    @GetMapping("/add")
    public String pizza(Pizza pizza, Model model){
        model.addAttribute("pizza", new Pizza());
        return "pizza/add";
    }

    @PostMapping("/add")
    public String pizzaPost(@Valid Pizza pizza, BindingResult result){
        if(result.hasErrors()){
            return "pizza/add";
        }
        pizzaRepository.save(pizza);
        return "redirect:/list";
    }

    @GetMapping("/list")
    public String pizzaList(Pizza pizza, Model model){
        model.addAttribute("list", pizzaRepository.findAll());
        return "pizza/list";
    }
}
