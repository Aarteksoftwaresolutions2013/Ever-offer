package com.ever.offer.in.model;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

//The Abstract Entity extend by other DB Entity for common fields in DB
@MappedSuperclass
public abstract class AbstractEntity {

    private Integer id;
    /**
     * Date of creation.
     */
    @Column(name = "created_date")
    private String createdDate;
    /**
     * Date of updation.
     * */
    @Column(name = "updated_date")
    private String updatedDate;

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "created_date", length = 55)
    public String getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    @Column(name = "updated_date", length = 55)
    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void setUpdatedDate(String updatedDate) {
        this.updatedDate = updatedDate;
    }
}