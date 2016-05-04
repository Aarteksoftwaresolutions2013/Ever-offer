package com.ever.offer.in.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "complementary_code")
public class ComplementaryCode extends AbstractEntity implements java.io.Serializable {

    private String complementaryCode;
    private int status;

    public ComplementaryCode() {
    }

    public ComplementaryCode(String complementaryCode, int status) {

        this.complementaryCode = complementaryCode;
        this.status = status;
    }

    @Column(name = "complementary_code", length = 55)
    public String getComplementaryCode() {
        return complementaryCode;
    }

    public void setComplementaryCode(String complementaryCode) {
        this.complementaryCode = complementaryCode;
    }

    @Column(name = "status", length = 55)
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
