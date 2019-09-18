package pl.coderslab.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.app.model.entities.User;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByUsername(String username);

    Optional<User> findById(Long id);
}
