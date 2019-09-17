package pl.coderslab.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.app.model.entities.Sugestion;

public interface SugestionRepository extends JpaRepository<Sugestion, Long> {
}
