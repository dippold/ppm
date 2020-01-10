package org.ftd.educational.ppm.persistence.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Fabio Tavares Dippold
 * 
 */
@Entity
public class MenuItem extends AbstractEntity {

    @Column(nullable = false, length = 20)
    private String pooler;

    @Column(nullable = false, length = 1)
    private int indexing;
    
    @Column(nullable = false, length = 1)
    private int typeFunction;     
    
    @Column(nullable = false, length = 45)
    private String resource;

    public String getPooler() {
        return pooler;
    }

    public void setPooler(String pooler) {
        this.pooler = pooler;
    }

    public int getIndexing() {
        return indexing;
    }

    public void setIndexing(int indexing) {
        this.indexing = indexing;
    }

    public int getTypeFunction() {
        return typeFunction;
    }

    public void setTypeFunction(int typeFunction) {
        this.typeFunction = typeFunction;
    }

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }       
    
}
