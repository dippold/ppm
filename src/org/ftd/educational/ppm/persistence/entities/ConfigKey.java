package org.ftd.educational.ppm.persistence.entities;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 *
 * @author Fabio Tavares Dipold
 * 
 */
@Entity
public class ConfigKey extends AbstractEntity { 
    @Column(nullable = false, length = 255)
    private String value;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }        
    
}
