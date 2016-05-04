package com.ever.offer.in.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ever.offer.in.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    /**
     * find by isDeleted
     * 
     * @param isDeleted
     * @return employee list
     */
    List<Employee> findByIsDeleted(Integer isDeleted);

}
