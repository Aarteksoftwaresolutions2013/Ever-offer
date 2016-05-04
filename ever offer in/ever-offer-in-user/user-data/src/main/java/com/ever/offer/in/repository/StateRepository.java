package com.ever.offer.in.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ever.offer.in.model.State;

@Repository
public interface StateRepository extends JpaRepository<State, Integer>{

}
