package org.ftd.educational.ppm.persistence.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2.0.0 - 03/02/2016
 * 
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "User.authenticate",
            query = "SELECT o FROM User o WHERE o.email = :email AND o.passwd = :passwd"),
    @NamedQuery(name = "User.findby.email",
            query = "SELECT o FROM User o WHERE o.email = :email"),
    @NamedQuery(name = "User.findby.keyword",
            query = "SELECT o FROM User o WHERE o.name LIKE :keyword ORDER BY o.name"),
    @NamedQuery(name = "User.findby.rule",
            query = "SELECT o FROM User o WHERE o.ruleId = :ruleId ORDER BY o.name")
})

public class User extends AbstractEntity { 

    @Column(unique = true, nullable = false, length = 45)
    private String email;

    @Column(nullable = false, length = 20)
    private String passwd;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
    
}
