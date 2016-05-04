package com.ever.offer.in.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ever.offer.in.model.ContactUs;
import com.ever.offer.in.repository.ContactUsRepository;
import com.ever.offer.in.service.ContactUsService;
import com.ever.offer.in.util.DateFormatUtil;
import com.ever.offer.in.util.MailSend;

@Service
@Transactional
public class ContactUsServiceImpl implements ContactUsService {

    @Autowired
    private ContactUsRepository contactUsRepository;

    /**
     * save website feedbak
     */
    public void saveFeedback(ContactUs contactUs) {
        contactUs.setCreatedDate(DateFormatUtil.getStringDate());
        contactUs.setUpdatedDate(DateFormatUtil.getStringDate());
        contactUsRepository.save(contactUs);

    }

    /**
     * Save mobile feedback and send email
     */
    public boolean saveMobileFeedBack(ContactUs contactUs) {
        contactUs.setCreatedDate(DateFormatUtil.getStringDate());
        contactUs.setUpdatedDate(DateFormatUtil.getStringDate());
        contactUsRepository.save(contactUs);
        MailSend.feedBackMessage(contactUs);
        return true;
    }
}
