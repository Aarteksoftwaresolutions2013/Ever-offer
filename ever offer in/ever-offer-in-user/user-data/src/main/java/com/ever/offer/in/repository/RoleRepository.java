package com.ever.offer.in.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ever.offer.in.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {

}
