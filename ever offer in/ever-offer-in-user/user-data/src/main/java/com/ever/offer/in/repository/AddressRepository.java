package com.ever.offer.in.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ever.offer.in.model.Address;

public interface AddressRepository extends JpaRepository<Address, Integer> {

}
