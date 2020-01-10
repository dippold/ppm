package org.ftd.educational.ppm.persistence.daos;

import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Fabio Tavares Dippold
 * 
 */
public class UserDAO extends UserJpaController {

    public UserDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
}
