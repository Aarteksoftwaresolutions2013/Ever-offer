package com.ever.offer.in.service;

import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ever.offer.in.model.City;
import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.State;

public interface RegistrationService {

    void registration(Login login,CommonsMultipartFile[] upload);

    List<State> getAllStates();

    List<City> getCities(int stateId);

	String verifyUsername(String userName);

	String verifyCode(String complementry);

	void changeIsApproved(Login login);

	void updatePlan(Login login);

}
