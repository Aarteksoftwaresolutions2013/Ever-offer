package com.ever.offer.in.service;

import com.ever.offer.in.model.ContactUs;

public interface ContactUsService {

	void saveFeedback(ContactUs contactUs);

    public boolean saveMobileFeedBack(ContactUs contactUs);

}
