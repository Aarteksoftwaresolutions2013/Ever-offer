package com.ever.offer.in.serviceImpl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ever.offer.in.model.Offer;
import com.ever.offer.in.repository.OfferRepository;
import com.ever.offer.in.service.OfferService;
import com.ever.offer.in.util.DateFormatUtil;
import com.ever.offer.in.util.IConstant;
import com.ever.offer.in.util.MerchantUtil;

@Service
public class OfferServiceImpl implements OfferService {

    @Autowired
    private OfferRepository offerRepository;

    /**
     * Save offer with offer image.
     *
     */
    public Offer saveOffer(Offer offer, CommonsMultipartFile[] upload) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(IConstant.VALID_UP_TO_DATE_FORMAT);
        offer.setOfferCoupanCode(MerchantUtil.randomString());
        offer.setUpdatedDate(MerchantUtil.getCurrentTimeStamp());
        offer.setCreatedDate(MerchantUtil.getCurrentTimeStamp());
        offer = uploadImage(upload, offer);

        offer.setIsApproved(IConstant.IS_NOT_APPROVED);
        Calendar calender = new GregorianCalendar();
        Date date = calender.getTime();
        String currentDate = simpleDateFormat.format(date);

        offer.setCreatedDate(currentDate);
        offer.setUpdatedDate(DateFormatUtil.getStringDate());
        Offer offerResult = offerRepository.save(offer);
        return offerResult;

    }

    /**
     * Upload image
     * 
     * @param upload
     * @param offer
     * @return
     */
    private Offer uploadImage(CommonsMultipartFile[] upload, Offer offer) {
        String attchmentName = null;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        if (upload != null && upload.length > IConstant.ZERO) {
            for (CommonsMultipartFile multipartFile : upload) {
                attchmentName = multipartFile.getOriginalFilename();
                try {
                    inputStream = multipartFile.getInputStream();
                    File newFile = new File(IConstant.FILE_PATH);
                    File filePath = new File(newFile + File.separator + offer.getOfferCoupanCode() + "_"
                                    + attchmentName);
                    if (!newFile.exists()) {
                        newFile.mkdir();
                        filePath.createNewFile();
                    }
                    outputStream = new FileOutputStream(filePath);
                    int read = IConstant.ZERO;
                    int length = (int) attchmentName.length();
                    byte[] bytes = new byte[length];
                    while ((read = inputStream.read(bytes)) != -1) {
                        outputStream.write(bytes, 0, read);
                    }
                    String profilePic = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
                    if (profilePic.equals(IConstant.JPG) || profilePic.equals(IConstant.PNG)
                                    || profilePic.equals(IConstant.BPG) || profilePic.equals(IConstant.JPEG)) {
                        offer.setImage(offer.getOfferCoupanCode() + "_" + attchmentName);
                    }
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return offer;
    }

    /**
     * Get offers based on loginId
     */
    public List<Offer> getMerchantAllOffer(Integer loginId) {
        return offerRepository.findByLoginId(loginId);
    }

    /**
     * Get offer based on offerId
     */
    public List<Offer> showOfferDetailsById(Integer offerId) {
        return offerRepository.findById(offerId);
    }

    /**
     * Find offer count based on loginId
     */
    public Long getOfferCount(Integer loginId) {
        return offerRepository.countByLoginIdAndIsApproved(loginId, IConstant.IS_APPROVED);
    }

    /**
     * Change offer status and update
     */
    public void changeStatusOfOffer(Offer offerResult) {
        offerResult.setIsApproved(IConstant.IS_END_VALIDITY);
        offerRepository.save(offerResult);

    }

    /**
     * Find non active offer count based on id
     */
    public Long getZeroOfferCount(Integer loginId) {
        return offerRepository.countByLoginIdAndIsApproved(loginId,IConstant.IS_NOT_APPROVED);
    }
}
