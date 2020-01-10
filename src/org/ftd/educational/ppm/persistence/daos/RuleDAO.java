package org.ftd.educational.ppm.persistence.daos;

import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Fabio Tavares Dippold
 * 
 */
public class RuleDAO extends RuleJpaController {

    public RuleDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
}
