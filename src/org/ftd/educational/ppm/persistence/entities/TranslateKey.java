package org.ftd.educational.ppm.persistence.entities;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 *
 * @author Fabio Tavares Dippold
 * 
 */
@Entity
public class TranslateKey extends AbstractEntity {
    
    @Column(nullable = false, length = 20)
    private String en_US;

    @Column(nullable = false, length = 20)
    private String es_ES;

    @Column(nullable = false, length = 20)
    private String pr_BR;    

    public String getEn_US() {
        return en_US;
    }

    public void setEn_US(String en_US) {
        this.en_US = en_US;
    }

    public String getEs_ES() {
        return es_ES;
    }

    public void setEs_ES(String es_ES) {
        this.es_ES = es_ES;
    }

    public String getPr_BR() {
        return pr_BR;
    }

    public void setPr_BR(String pr_BR) {
        this.pr_BR = pr_BR;
    }        
    
}
