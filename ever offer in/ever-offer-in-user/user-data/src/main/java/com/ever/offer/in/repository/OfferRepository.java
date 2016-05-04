package com.ever.offer.in.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ever.offer.in.model.Offer;

@Repository
@Transactional
public interface OfferRepository extends JpaRepository<Offer, Integer> {
    /**
     * find by login id and isApproved
     * 
     * @param loginId
     * @param isApproved
     * @return offers
     */
    List<Offer> findByLoginIdAndIsApproved(Integer loginId, Integer isApproved);

    /**
     * find by offer id
     * 
     * @param offerId
     * @return offers
     */
    List<Offer> findById(Integer offerId);

    /**
     * find by login id
     * 
     * @param loginId
     * @return offers
     */
    List<Offer> findByLoginId(Integer loginId);

    /**
     * find offer by isApproved
     * 
     * @param isApproved
     * @return offers
     */
    List<Offer> findByIsApproved(int isApproved);

    /**
     * find by city id and isApproved
     * 
     * @param id
     * @param isApproved
     * @return offers
     */
    List<Offer> findByLoginAddressCityIdAndIsApproved(Integer cityId, Integer isApproved);

    /**
     * find count by login id and isApproved
     * 
     * @param loginId
     * @param isApproved
     * @return
     */
    Long countByLoginIdAndIsApproved(Integer loginId, Integer isApproved);

}
