package com.ever.offer.in.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.Payment;
import com.ever.offer.in.repository.LoginRepository;
import com.ever.offer.in.repository.PaymentRepository;
import com.ever.offer.in.service.PaymentService;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Autowired
    private LoginRepository loginRepository;

    @Autowired
    private PaymentRepository paymentRepository;

    /**
     * Save payment information
     */
    public void savePayment(Payment payment, Login login) {
        paymentRepository.save(payment);
        login.setPayment(payment);
        loginRepository.save(login);
    }
}
