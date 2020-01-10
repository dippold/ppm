package org.ftd.educational.ppm.persistence.entities.tests;

import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.ftd.educational.ppm.persistence.daos.RuleDAO;
import org.ftd.educational.ppm.persistence.daos.UserDAO;
import org.ftd.educational.ppm.persistence.entities.Rule;
import org.ftd.educational.ppm.persistence.entities.User;

/**
 *
 * @author Fabio Tavares Dippold
 *
 */
public class TestarPersistencia {
    private static final String PERSISTENCE_UNIT_NAME = "ppmPU";

    public static void main(String[] args) {
        findAllUsersTest();
        findAllRulesTest();
    }
  
    
    private static void findAllUsersTest() {
        System.out.println("findAllUsersTest...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserDAO dao = new UserDAO(factory);
        List<User> lst = dao.findUserEntities();

        lst.stream().forEach((o) -> {
            System.out.println(o);
        });

    }

    private static void findAllRulesTest() {
        System.out.println("findAllRulesTest...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        RuleDAO dao = new RuleDAO(factory);
        List<Rule> lst = dao.findRuleEntities();

        lst.stream().forEach((o) -> {
            System.out.println(o);
        });

    }    
    
}
