package com.ever.offer.in.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ever.offer.in.model.ComplementaryCode;

@Repository
public interface ComplementaryCodeRepository extends JpaRepository<ComplementaryCode, Integer> {

    /**
     * find by complementary code and status
     * 
     * @param complementry
     * @param status
     * @return Complementary instance
     */
    ComplementaryCode findByComplementaryCodeAndStatus(String complementary, int status);
}
