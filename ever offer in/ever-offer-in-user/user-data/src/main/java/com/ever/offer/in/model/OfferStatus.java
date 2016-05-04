package com.ever.offer.in.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "offer_status")
public class OfferStatus extends AbstractEntity {

    private Integer offerId;
    private String deviceId;
    private Integer status;

    public OfferStatus() {
    }

    public OfferStatus(Integer offerId, String deviceId, Integer status) {
        this.offerId = offerId;
        this.deviceId = deviceId;
        this.status = status;
    }

    @Column(name = "offer_id")
    public Integer getOfferId() {
        return offerId;
    }

    public void setOfferId(Integer offerId) {
        this.offerId = offerId;
    }

    @Column(name = "device_id")
    public String getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    @Column(name = "status")
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
