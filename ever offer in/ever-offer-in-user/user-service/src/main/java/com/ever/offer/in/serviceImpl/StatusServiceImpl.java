package com.ever.offer.in.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ever.offer.in.model.OfferStatus;
import com.ever.offer.in.repository.OfferStatusRepository;
import com.ever.offer.in.service.StatusService;
import com.ever.offer.in.util.DateFormatUtil;
import com.ever.offer.in.util.IConstant;

@Service
public class StatusServiceImpl implements StatusService {

    @Autowired
    private OfferStatusRepository offerStatusRepository;

    /**
     * Check offer status with device id
     */
    public boolean checkStatus(OfferStatus offerStatus) {
        OfferStatus result = offerStatusRepository.findByOfferIdAndDeviceId(offerStatus.getOfferId(), offerStatus.getDeviceId());
        if (result != null) {
            return false;
        } else {
            offerStatus.setStatus(IConstant.ONE);
            offerStatus.setCreatedDate(DateFormatUtil.getStringDate());
            offerStatus.setUpdatedDate(DateFormatUtil.getStringDate());
            offerStatusRepository.save(offerStatus);
            return true;
        }
    }
}
