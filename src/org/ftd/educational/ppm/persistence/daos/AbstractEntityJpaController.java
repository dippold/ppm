/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ftd.educational.ppm.persistence.daos;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.ftd.educational.ppm.persistence.daos.exceptions.NonexistentEntityException;
import org.ftd.educational.ppm.persistence.entities.AbstractEntity;

/**
 *
 * @author ftdippold
 */
public class AbstractEntityJpaController implements Serializable {

    public AbstractEntityJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(AbstractEntity abstractEntity) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(abstractEntity);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(AbstractEntity abstractEntity) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            abstractEntity = em.merge(abstractEntity);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = abstractEntity.getId();
                if (findAbstractEntity(id) == null) {
                    throw new NonexistentEntityException("The abstractEntity with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Long id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            AbstractEntity abstractEntity;
            try {
                abstractEntity = em.getReference(AbstractEntity.class, id);
                abstractEntity.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The abstractEntity with id " + id + " no longer exists.", enfe);
            }
            em.remove(abstractEntity);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<AbstractEntity> findAbstractEntityEntities() {
        return findAbstractEntityEntities(true, -1, -1);
    }

    public List<AbstractEntity> findAbstractEntityEntities(int maxResults, int firstResult) {
        return findAbstractEntityEntities(false, maxResults, firstResult);
    }

    private List<AbstractEntity> findAbstractEntityEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(AbstractEntity.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public AbstractEntity findAbstractEntity(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(AbstractEntity.class, id);
        } finally {
            em.close();
        }
    }

    public int getAbstractEntityCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<AbstractEntity> rt = cq.from(AbstractEntity.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
