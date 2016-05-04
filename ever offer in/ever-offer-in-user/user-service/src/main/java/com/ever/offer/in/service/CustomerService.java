package com.ever.offer.in.service;

import java.util.List;

import com.ever.offer.in.model.Address;
import com.ever.offer.in.model.Login;

public interface CustomerService {

	boolean saveCustomerInformation(Login login);

    boolean checkCustomerRegistration(String contact);

    boolean approveCustomer(String userName, String otpCode);

    List updateProfile(Address address);

}
