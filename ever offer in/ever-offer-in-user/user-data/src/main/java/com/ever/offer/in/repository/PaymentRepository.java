package com.ever.offer.in.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ever.offer.in.model.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Integer> {

}
