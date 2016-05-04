package com.ever.offer.in.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ever.offer.in.model.Employee;
import com.ever.offer.in.repository.EmployeeRepository;
import com.ever.offer.in.service.EmployeeService;
import com.ever.offer.in.util.IConstant;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    /**
     * Get all employee based on isDeleted
     * 
     */
    public List<Employee> getAllEmployee() {
        return employeeRepository.findByIsDeleted(IConstant.IS_DELETED);
    }

}
