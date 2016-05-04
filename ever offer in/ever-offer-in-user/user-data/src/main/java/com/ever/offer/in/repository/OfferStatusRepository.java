package com.ever.offer.in.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ever.offer.in.model.OfferStatus;

@Repository
public interface OfferStatusRepository extends JpaRepository<OfferStatus, Integer> {

    /**
     * find by offerId and deviceId
     * 
     * @param offerId
     * @param deviceId
     * @return offerStats instance
     */
    OfferStatus findByOfferIdAndDeviceId(Integer offerId, String deviceId);

}
