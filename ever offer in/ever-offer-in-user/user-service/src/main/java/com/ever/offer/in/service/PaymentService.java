package com.ever.offer.in.service;

import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.Payment;

public interface PaymentService {

    public void savePayment(Payment payment, Login login);

}
