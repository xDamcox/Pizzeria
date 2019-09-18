package pl.coderslab.app.model.entities;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@Table(name = "sugestions")
public class Sugestion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Size(max = 250)
    private String  text;
    private LocalDateTime created;

    @ManyToOne
    private User user;

    public Sugestion() {
    }

    public Sugestion(String text, LocalDateTime created, User user) {
        this.text = text;
        this.created = created;
        this.user = user;
    }

    @PrePersist
    public void prePersiste(){
        created = LocalDateTime.now();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Sugestion sugestion = (Sugestion) o;
        return Objects.equals(id, sugestion.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Sugestion{" +
                "id=" + id +
                ", created=" + created +
                ", text=" + text +
                ", user=" + user +
                '}';
    }
}
