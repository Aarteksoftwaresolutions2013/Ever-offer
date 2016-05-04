package com.ever.offer.in.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ever.offer.in.model.ContactUs;
import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.Payment;
import com.ever.offer.in.service.ContactUsService;
import com.ever.offer.in.service.LoginService;
import com.ever.offer.in.service.RegistrationService;
import com.ever.offer.in.util.IConstant;

@Controller
@SuppressWarnings("unused")
public class CommonController {

    private static final Logger logger = Logger.getLogger(CommonController.class);

    @Autowired
    private ContactUsService contactUsService;

    @Autowired
    private LoginService loginService;

    @Autowired
    private RegistrationService registrationService;

    /**
     * Show contact us page
     * 
     * @param map
     * @param message
     * @return contact
     */
    @RequestMapping("/contact")
    private String showContact(Map<String, Object> map, String message) {
        map.put("ContactUs", new ContactUs());
        map.put("message", message);
        return "contact";
    }

    /**
     * Save customer feedback
     * 
     * @param contactUs
     * @param model
     * @param map
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/saveFeedback", method = RequestMethod.POST)
    public String saveFeedback(@ModelAttribute("ContactUs") ContactUs contactUs, ModelMap model) {
        contactUsService.saveFeedback(contactUs);
        model.addAttribute("message", IConstant.CONTACT);
        return "redirect:/contact";
    }

    /**
     * Show promoteBusiness page
     * 
     * @return promoteBusiness
     */
    @RequestMapping("/promoteBusiness")
    private String showPromoteBusiness() {
        return "promoteBusiness";
    }

    /**
     * Show whatisEveroffer page
     * 
     * @return whatisEveroffer
     */
    @RequestMapping("/whatisEveroffer")
    private String showWhatisEveroffer() {
        return "whatisEveroffer";
    }

    /**
     * Show whatWeOffer page
     * 
     * @return whatWeOffer
     */
    @RequestMapping("/whatWeOffer")
    private String showWhatWeOffer() {
        return "whatWeOffer";
    }

    /**
     * Show aboutUs page
     * 
     * @return page
     */
    @RequestMapping("/aboutUs")
    private String showAboutUs() {
        return "aboutUs";
    }

    /**
     * Show careers page
     * 
     * @return careers
     */
    @RequestMapping("/careers")
    private String showCareers() {
        return "careers";
    }

    /**
     * Show cancellationAndRefund page
     * 
     * @return cancellationAndRefund
     */
    @RequestMapping("/cancellationAndRefund")
    private String showCancellationAndRefund() {
        return "cancellationAndRefund";
    }

    /**
     * Show commerceAndIncorp page
     * 
     * @return commerceAndIncorp
     */
    @RequestMapping("/commerceAndIncorp")
    private String showCommerceAndIncorp() {
        return "commerceAndIncorp";
    }

    /**
     * Show privacyPolicy page
     * 
     * @return privacyPolicy
     */
    @RequestMapping("/privacyPolicy")
    private String showPrivacyPolicy() {
        return "privacyPolicy";
    }

    /**
     * Show productsAndServices page
     * 
     * @return productsAndServices
     */
    @RequestMapping("/productsAndServices")
    private String showProductsAndServices() {
        return "productsAndServices";
    }

    /**
     * Show returnPolicy page
     * 
     * @return returnPolicy
     */
    @RequestMapping("/returnPolicy")
    private String showReturnPolicy() {
        return "returnPolicy";
    }

    /**
     * Show shipAndDeliveryPolicy page
     * 
     * @return shipAndDeliveryPolicy
     */
    @RequestMapping("/shipAndDeliveryPolicy")
    private String showShipAndDeliveryPolicy() {
        return "shipAndDeliveryPolicy";
    }

    /**
     * Show promotional events page.
     * 
     * @return promotionalEvents
     */
    @RequestMapping("/promotionalEvents")
    private String promotionalEvents() {
        return "promotionalEvents";
    }

    /**
     * Show payment page.
     * 
     * @param map
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/payment")
    private String showPaymentPage(Map<String, Object> map, ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Login login = (Login) session.getAttribute("payment");
        Login paymentNow = (Login) session.getAttribute("paymentNow");
        if (login != null) {
            model.addAttribute("amount", login.getPayment().getAmount());
            model.addAttribute("firstName", login.getName());
            model.addAttribute("email", login.getAddress().getContactEmail());
            model.addAttribute("number", login.getAddress().getContactNo());
            model.addAttribute("productinfo", IConstant.PRODUCT_INFO);
            model.addAttribute("sUrl", IConstant.SUCCESS_URL);
            model.addAttribute("fUrl", IConstant.FAILURE_URL);
        }
        if (paymentNow != null) {
            model.addAttribute("amount", paymentNow.getPayment().getAmount());
            model.addAttribute("firstName", paymentNow.getName());
            model.addAttribute("email", paymentNow.getAddress().getContactEmail());
            model.addAttribute("number", paymentNow.getAddress().getContactNo());
            model.addAttribute("productinfo", IConstant.PRODUCT_INFO);
            model.addAttribute("sUrl", IConstant.SUCCESS_URL);
            model.addAttribute("fUrl", IConstant.FAILURE_URL);
        }
        return "payment";
    }

    /**
     * Show payumoney page
     * 
     * @param model
     * @param map
     * @param id
     * @return
     */
    @RequestMapping(value = "/payumoney")
    public String showPayuMoney(ModelMap model, Map<String, Object> map, @RequestParam Integer id) {
        map.put("Login", new Login());
        model.addAttribute("id", id);
        return "payumoney";
    }

    /**
     * make payment and update merchant information after payment
     * 
     * @param login
     * @param model
     * @param map
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/makePayment", method = RequestMethod.POST)
    public String save(@ModelAttribute("Registration") Login login, ModelMap model, Map<String, Object> map,
                    HttpServletRequest request, HttpServletResponse response) {
        Login resultLogin = loginService.getById(login.getRole().getId());
        resultLogin.setSubscriptionPlan(login.getSubscriptionPlan());
        Calendar calendar = new GregorianCalendar();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(IConstant.VALID_UP_TO_DATE_FORMAT);
        if (resultLogin.getSubscriptionPlan() == IConstant.THIRTY_DAYS_SUBSCRIPTION) {
            calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_THIRTY_DAYS_SUBSCRIPTION);
            Date date = calendar.getTime();
            String strDate = simpleDateFormat.format(date);
            resultLogin.setTimePeriod(strDate);
        } else if (resultLogin.getSubscriptionPlan() == IConstant.THREE_MONTH_SUBSCRIPTION) {
            calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_THREE_MONTH_SUBSCRIPTION);
            Date date = calendar.getTime();
            String strDate = simpleDateFormat.format(date);
            resultLogin.setTimePeriod(strDate);

        } else if (resultLogin.getSubscriptionPlan() == IConstant.SIX_MONTHS_SUBSCRIPTION) {
            calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_SIX_MONTHS_SUBSCRIPTION);
            Date date = calendar.getTime();
            String strDate = simpleDateFormat.format(date);
            resultLogin.setTimePeriod(strDate);
        } else if (resultLogin.getSubscriptionPlan() == IConstant.ONE_YEAR_SUBSCRIPTION) {
            calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_ONE_YEAR_SUBSCRIPTION);
            Date date = calendar.getTime();
            String strDate = simpleDateFormat.format(date);
            resultLogin.setTimePeriod(strDate);
        }
        registrationService.updatePlan(resultLogin);
        Payment payment = setAmount(resultLogin, login);
        resultLogin.setPayment(payment);
        HttpSession session = request.getSession();
        session.setAttribute("paymentNow", resultLogin);
        return "redirect:/payment";
    }

    /**
     * Set amount based on subscription plan
     * 
     * @param resultLogin
     * @param login
     * @return
     */
    private Payment setAmount(Login resultLogin, Login login) {
        Payment payment = new Payment();
        if (resultLogin.getMerchantType() == IConstant.ONE) {
            if (login.getSubscriptionPlan() == IConstant.THIRTY_DAYS_SUBSCRIPTION) {
                payment.setAmount(IConstant.THIRTY_DAYS_SUBSCRIPTION_SMALL_AMOUNT);
            } else if (login.getSubscriptionPlan() == IConstant.THREE_MONTH_SUBSCRIPTION) {
                payment.setAmount(IConstant.THREE_MONTH_SUBSCRIPTION_SMALL_AMOUNT);
            } else if (login.getSubscriptionPlan() == IConstant.SIX_MONTHS_SUBSCRIPTION) {
                payment.setAmount(IConstant.SIX_MONTHS_SUBSCRIPTION_SMALL_AMOUNT);
            } else if (login.getSubscriptionPlan() == IConstant.ONE_YEAR_SUBSCRIPTION) {
                payment.setAmount(IConstant.ONE_YEAR_SUBSCRIPTION_SMALL_AMOUNT);
            }
        } else {
            if (login.getSubscriptionPlan() == IConstant.THIRTY_DAYS_SUBSCRIPTION) {
                payment.setAmount(IConstant.THIRTY_DAYS_SUBSCRIPTION_COMBO_AMOUNT);
            } else if (login.getSubscriptionPlan() == IConstant.THREE_MONTH_SUBSCRIPTION) {
                payment.setAmount(IConstant.THREE_MONTH_SUBSCRIPTION_COMBO_AMOUNT);
            } else if (login.getSubscriptionPlan() == IConstant.SIX_MONTHS_SUBSCRIPTION) {
                payment.setAmount(IConstant.SIX_MONTHS_SUBSCRIPTION_COMBO_AMOUNT);
            } else if (login.getSubscriptionPlan() == IConstant.ONE_YEAR_SUBSCRIPTION) {
                payment.setAmount(IConstant.ONE_YEAR_SUBSCRIPTION_COMBO_AMOUNT);
            }
        }
        return payment;
    }
}
