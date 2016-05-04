package com.ever.offer.in.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ever.offer.in.model.Advertisement;

@Repository
public interface AdvertisementRepository extends JpaRepository<Advertisement, Integer> {

    static final String HAVERSINE_PART = "(6371 * acos(cos(radians(:letitude)) * cos(radians(ad.letitude)) * cos(radians(ad.longitude) - radians(:longitude)) + sin(radians(:letitude)) * sin(radians(ad.letitude))))";

    @Query("SELECT ad FROM Advertisement ad WHERE ad.isApproved=1 and" + HAVERSINE_PART + " < :distance ORDER BY "
                    + HAVERSINE_PART + " DESC")
    public List<Advertisement> getAdvList(@Param("letitude") final double letitude,
                    @Param("longitude") final double longitude, @Param("distance") final double distance);

    /**
     * find by cityId and isApproved
     * 
     * @param cityId
     * @param isApproved
     * @return Advertisements
     */
    public List<Advertisement> findByCityIdAndIsApproved(Integer cityId, Integer isApproved);

}
