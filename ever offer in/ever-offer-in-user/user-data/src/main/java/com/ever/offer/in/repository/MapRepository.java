/**
 * 
 */
package com.ever.offer.in.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.Offer;

/**
 * @author Patidar
 *
 */
public interface MapRepository extends JpaRepository<Login, Integer> {

    static final String HAVERSINE_PART = "(6371 * acos(cos(radians(:letitude)) * cos(radians(e.login.address.letitude)) * cos(radians(e.login.address.longitude) - radians(:longitude)) + sin(radians(:letitude)) * sin(radians(e.login.address.letitude))))";

    @Query("SELECT e FROM Offer e WHERE e.isApproved=1 and" + HAVERSINE_PART + " < :distance ORDER BY "
                    + HAVERSINE_PART + " DESC")
    public List<Offer> getMapDetails(@Param("letitude") final double letitude,
                    @Param("longitude") final double longitude, @Param("distance") final double distance);

}
