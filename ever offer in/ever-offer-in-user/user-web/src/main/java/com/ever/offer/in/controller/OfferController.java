package com.ever.offer.in.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.Offer;
import com.ever.offer.in.service.OfferService;
import com.ever.offer.in.service.RegistrationService;
import com.ever.offer.in.util.ConvertImage;
import com.ever.offer.in.util.DateFormatUtil;
import com.ever.offer.in.util.IConstant;

@Controller
@SuppressWarnings("unused")
public class OfferController {

    private static final Logger logger = Logger.getLogger(OfferController.class);

    @Autowired
    private RegistrationService registrationService;

    @Autowired
    private OfferService offerService;

    /**
     * Show add offer page.
     * 
     * @param map
     * @param model
     * @return
     */
    @RequestMapping("/addOffer")
    private String showOfferEntry(ModelMap model) {
        model.addAttribute("offer", new Offer());
        return "addOffer";
    }

    /**
     * Save offer according to merchant registration type.
     * 
     * @param offer
     * @param model
     * @param map
     * @param request
     * @param response
     * @param upload
     * @return
     */
    @RequestMapping(value = "/saveOffer", method = RequestMethod.POST)
    public String saveOffer(@ModelAttribute("offer") Offer offer, ModelMap model, Map<String, Object> map,
                    HttpServletRequest request, HttpServletResponse response,
                    @RequestParam CommonsMultipartFile[] upload) {
        boolean status = true;
        Integer noOfDay = IConstant.ZERO;
        Login login = (Login) request.getSession().getAttribute("login");
        offer.setLogin(login);
        List<Offer> offerList = offerService.getMerchantAllOffer(login.getId());
        if (null != offerList && !offerList.isEmpty()) {
            if (null != login.getSubscriptionPlan()) {
                Long count = offerService.getOfferCount(login.getId());
                if (login.getMerchantType() == IConstant.ONE) {
                    if (count == IConstant.ONE) {
                        for (Offer off : offerList) {
                            if (off.getIsApproved() == IConstant.ONE) {
                                noOfDay = DateFormatUtil.getRemainingDaysForoffer(off.getCreatedDate());
                                if (noOfDay >= IConstant.WEEK) {
                                    offerService.changeStatusOfOffer(off);
                                    status = true;
                                } else {
                                    status = false;
                                }
                            }
                        }
                    } else {
                        status = false;
                    }
                } else {
                    /* Second count for count large merchant */
                    Long secondCount = offerService.getZeroOfferCount(login.getId());
                    if (secondCount < IConstant.THREE) {
                        if (count <= IConstant.NO_OF_OFFER_FOR_LARGE_MERCHANT) {
                            int offerCount = IConstant.ZERO;
                            for (Offer off : offerList) {
                                noOfDay = DateFormatUtil.getRemainingDaysForoffer(off.getCreatedDate());
                                if (noOfDay >= IConstant.WEEK) {
                                    if (off.getIsApproved() == IConstant.ONE) {
                                        offerService.changeStatusOfOffer(off);
                                        status = true;
                                        offerCount = offerCount + IConstant.ONE;
                                    }
                                }
                            }
                            if (offerCount > IConstant.ZERO) {
                                status = true;
                            } else {
                                status = false;
                            }
                        } else {
                            status = false;
                        }
                    } else {
                        status = false;
                    }
                }

            } else {
                Long count = offerService.getOfferCount(login.getId());
                if (count == IConstant.ONE) {
                    for (Offer off : offerList) {
                        if (off.getIsApproved() == IConstant.ONE) {
                            noOfDay = DateFormatUtil.getRemainingDaysForoffer(off.getCreatedDate());
                            if (noOfDay >= IConstant.WEEK) {
                                offerService.changeStatusOfOffer(off);
                                status = true;
                            } else {
                                status = false;
                            }
                        }
                    }
                } else {
                    status = false;
                }
            }
        }
        if (status) {
            Offer offerResult = offerService.saveOffer(offer, upload);
            if (offerResult != null)
                model.addAttribute("message", IConstant.OFFER_SUCCESS_MESSAGE);
        } else {
            model.addAttribute("message", IConstant.OFFER_LIMIT);
        }
        model.addAttribute("offer", new Offer());
        return "addOffer";
    }

    /**
     * View merchant's offer details.
     * 
     * @param map
     * @param model
     * @param offerId
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/viewOffer", method = { RequestMethod.GET, RequestMethod.POST })
    public String showOffer(Map<String, Object> map, ModelMap model, @RequestParam(required = false) String offerId)
                    throws IOException {
        byte[] decodedId = Base64.decodeBase64(offerId.getBytes());
        List<Offer> offerDetailsList = offerService.showOfferDetailsById(Integer.parseInt(new String(decodedId)));
        model.addAttribute("offerDetailsList", offerDetailsList);
        Offer offer = null;
        if (null != offerDetailsList && !offerDetailsList.isEmpty()) {
            offer = offerDetailsList.get(IConstant.ZERO);
            if (offer.getImage() != null && !offer.getImage().isEmpty()) {
                BufferedImage img = ImageIO.read(new File(IConstant.FILE_PATH + "/"
                                + offerDetailsList.get(IConstant.ZERO).getImage()));
                String imgstr;
                ImageInputStream iis = ImageIO.createImageInputStream(new File(IConstant.FILE_PATH + "/"
                                + offerDetailsList.get(IConstant.ZERO).getImage()));
                Iterator<ImageReader> imageReaders = ImageIO.getImageReaders(iis);
                ImageReader reader = null;
                while (imageReaders.hasNext()) {
                    reader = (ImageReader) imageReaders.next();
                }
                imgstr = ConvertImage.encodeToString(img, reader.getFormatName());
                offer.setImage(imgstr);
            }
        }
        map.put("offer", offer);
        return "offerDetails";
    }

}
