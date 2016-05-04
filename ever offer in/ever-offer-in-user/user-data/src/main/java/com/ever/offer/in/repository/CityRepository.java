package com.ever.offer.in.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ever.offer.in.model.City;

@Repository
public interface CityRepository extends JpaRepository<City, Integer> {

    /**
     * find city name by state
     * 
     * @param sort
     * @param stateId
     * @return
     */
    public List<City> findAllByStateId(Sort sort, int stateId);

}
