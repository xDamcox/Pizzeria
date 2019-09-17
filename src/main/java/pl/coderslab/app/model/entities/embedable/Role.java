package pl.coderslab.app.model.entities.embedable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class Role implements Serializable {

    @Column(nullable = false)
    private String authority;

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Role role = (Role) o;
        return Objects.equals(authority, role.authority);
    }

    @Override
    public int hashCode() {

        return Objects.hash(authority);
    }

    @Override
    public String toString() {
        return "Role{" +
                "authority='" + authority + '\'' +
                '}';
    }
}
