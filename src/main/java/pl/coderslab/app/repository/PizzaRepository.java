package pl.coderslab.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.app.model.entities.Pizza;

import java.util.List;
import java.util.Optional;

public interface PizzaRepository extends JpaRepository<Pizza, Long> {
    Optional<Pizza> findById(Long id);

    List<Pizza> findByName(String start);
}
