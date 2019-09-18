package pl.coderslab.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.app.model.entities.Sugestion;
import pl.coderslab.app.model.entities.User;

import java.util.List;

public interface SugestionRepository extends JpaRepository<Sugestion, Long> {
    
}
