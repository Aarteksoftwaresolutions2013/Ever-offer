package com.ever.offer.in.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SuppressWarnings("unused")
public class MerchantCommonController {

    private static final Logger logger = Logger.getLogger(MerchantCommonController.class);

    /**
     * Show cancellation page
     * 
     * @return cancellation
     */
    @RequestMapping("/cancellation")
    private String showCancellationAndRefund() {
        return "cancellation";
    }

    /**
     * Show commerce page
     * 
     * @return commerce
     */
    @RequestMapping("/commerce")
    private String showCommerceAndIncorp() {
        return "commerce";
    }

    /**
     * Show privacy page
     * 
     * @return privacy
     */
    @RequestMapping("/privacy")
    private String showPrivacyPolicy() {
        return "privacy";
    }

    /**
     * Show products page
     * 
     * @return products
     */
    @RequestMapping("/products")
    private String showProductsAndServices() {
        return "products";
    }

    /**
     * Show return policy page
     * 
     * @return return
     */
    @RequestMapping("/return")
    private String showReturnPolicy() {
        return "return";
    }

    /**
     * Show shipAndDelivery page
     * 
     * @return ship
     */
    @RequestMapping("/ship")
    private String showShipAndDeliveryPolicy() {
        return "ship";
    }

    /**
     * Show promotional event page.
     * 
     * @return cityEvents
     */
    @RequestMapping("/cityEvents")
    private String cityEvents() {
        return "cityEvents";
    }

    /**
     * show success page
     * 
     * @return
     */
    @RequestMapping("/success")
    private String showSuccess(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "success";
    }

}
