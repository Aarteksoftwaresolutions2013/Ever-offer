package com.ever.offer.in.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ever.offer.in.model.City;
import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.Offer;
import com.ever.offer.in.model.Payment;
import com.ever.offer.in.service.EmployeeService;
import com.ever.offer.in.service.LoginService;
import com.ever.offer.in.service.OfferService;
import com.ever.offer.in.service.PaymentService;
import com.ever.offer.in.service.RegistrationService;
import com.ever.offer.in.util.DateFormatUtil;
import com.ever.offer.in.util.IConstant;

@Controller
@SuppressWarnings("unused")
public class LoginController {

    private static final Logger logger = Logger.getLogger(LoginController.class);

    @Autowired
    private LoginService loginService;

    @Autowired
    private RegistrationService registrationService;

    @Autowired
    private OfferService offerService;

    @Autowired
    private PaymentService paymentService;

    @Autowired
    private EmployeeService employeeService;

    List<Offer> offerList = null;

    /**
     * Show welcome page.
     * 
     * @param map
     * @return
     */
    @RequestMapping("/registration")
    private String showRegistration(Map<String, Object> map) {
        map.put("Login", new Login());
        map.put("stateList", registrationService.getAllStates());
        map.put("employeeList", employeeService.getAllEmployee());
        return "merchantRegistration";
    }

    /**
     * Save merchant information.
     * 
     * @param login
     * @param model
     * @param map
     * @param request
     * @param response
     * @return
     * @throws Exception 
     * @throws IOException 
     */
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("Registration") Login login, ModelMap model, Map<String, Object> map,
                    HttpServletRequest request, HttpServletResponse response,
                    @RequestParam CommonsMultipartFile[] upload) {
        registrationService.registration(login, upload);
        if (login.getRegistrationType() == IConstant.COMPLEMENTRY_TYPE) {
            model.addAttribute("massage", IConstant.REGISTRATION_SUCCESSFUL);
            map.put("Login", new Login());
            return "login";
        } else if (login.getRegistrationType() == IConstant.SUBSCRIPTION_TYPE) {
            Payment payment = setPaymentBasedOnSubscription(login);
            login.setPayment(payment);
            model.addAttribute("massage", IConstant.REGISTRATION_SUCCESSFUL);
            map.put("Login", new Login());
            HttpSession session = request.getSession();
            session.setAttribute("payment", login);
            return "redirect:/payment";
        }
        return "registration";
    }

    /**
     * Set payment based on subscription plane
     * 
     * @param login
     * @return payment
     */
    private Payment setPaymentBasedOnSubscription(Login login) {
        Payment payment = new Payment();
        if (login.getMerchantType() == IConstant.ONE) {
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

    /**
     * Show Merchant Login page.
     * 
     * @param map
     * @param model
     * @return
     */
    @RequestMapping("/login")
    private String showLogin(Map<String, Object> map, HttpServletRequest request, String massage, Integer id) {
        map.put("Login", new Login());
        if (id != null) {
            map.put("massage", IConstant.ACCOUNT_EXPIRED
                            + ", Please complete your payment then login <a href=payumoney?id=" + id + ">Pay Now</a>");
        } else {
            map.put("massage", massage);
        }
        HttpSession session = request.getSession();
        session.invalidate();
        return "login";
    }

    /**
     * Merchant login and view his all offer and check his account expire or not
     * 
     * @param login
     * @param model
     * @param map
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/signIn", method = RequestMethod.POST)
    public String login(@ModelAttribute("Login") Login login, ModelMap model, Map<String, Object> map,
                    HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        login = loginService.merchantLogin(login);
        int numberOfDaysRemaining = IConstant.ZERO;
        if (null != login) {
            session.setAttribute("login", login);
            model.addAttribute("offerList", offerService.getMerchantAllOffer(login.getId()));
            numberOfDaysRemaining = DateFormatUtil.getRemainingDays(login.getTimePeriod());
            if (null != login.getSubscriptionPlan()) {
                if (login.getSubscriptionPlan() == IConstant.THIRTY_DAYS_SUBSCRIPTION
                                && numberOfDaysRemaining <= IConstant.NO_OF_DAYS_FOR_THIRTY_DAYS_SUBSCRIPTION) {
                    return checkIsApproved(login, model);
                } else if (login.getSubscriptionPlan() == IConstant.THREE_MONTH_SUBSCRIPTION
                                && numberOfDaysRemaining <= IConstant.NO_OF_DAYS_FOR_THREE_MONTH_SUBSCRIPTION) {
                    return checkIsApproved(login, model);
                } else if (login.getSubscriptionPlan() == IConstant.SIX_MONTHS_SUBSCRIPTION
                                && numberOfDaysRemaining <= IConstant.NO_OF_DAYS_FOR_SIX_MONTHS_SUBSCRIPTION) {
                    return checkIsApproved(login, model);

                } else if (login.getSubscriptionPlan() == IConstant.ONE_YEAR_SUBSCRIPTION
                                && numberOfDaysRemaining <= IConstant.NO_OF_DAYS_FOR_ONE_YEAR_SUBSCRIPTION) {
                    return checkIsApproved(login, model);
                } else {
                    model.addAttribute("massage", IConstant.ACCOUNT_EXPIRED);
                    return "redirect:/login";
                }
            } else {
                if (numberOfDaysRemaining <= IConstant.NO_OF_DAYS_FOR_COMPLEMENTARY) {
                    return "welcome";
                } else {
                    registrationService.changeIsApproved(login);
                    model.addAttribute("id", login.getId());
                    return "redirect:/login";
                }
            }
        } else {
            model.addAttribute("massage", IConstant.INVALID_LOGIN_MESSAGE);
            return "login";
        }
    }

    /**
     * Check login expiration date and status
     * 
     * @param login
     * @param model
     * @return
     */
    private String checkIsApproved(Login login, ModelMap model) {
        if (login.getIsApproved() == IConstant.IS_APPROVED) {
            return "welcome";
        } else {
            model.addAttribute("id", login.getId());
            return "redirect:/login";
        }
    }

    /**
     * Merchant logout.
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        HttpSession session = request.getSession();
        session.invalidate();
        model.addAttribute("massage", IConstant.LOGOUT_SUCCESSFUL);
        return "redirect:/login";
    }

    /**
     * to fetch City list By StateId
     * 
     * @param stateId
     * @return
     */
    @RequestMapping(value = "/cityList", method = RequestMethod.GET)
    @ResponseBody
    public List<City> searchAddress(@RequestParam Integer stateId) {
        List<City> cityList = null;
        if (stateId > IConstant.ZERO) {
            cityList = registrationService.getCities(stateId);
        }
        return cityList;
    }

    /**
     * Check user already exist or not.
     * 
     * @param userName
     * @return
     */
    @RequestMapping(value = "/verifyUsername", method = RequestMethod.GET)
    @ResponseBody
    public String verifyUsername(@RequestParam String userName) {
        String existed = registrationService.verifyUsername(userName);
        return existed;
    }

    /**
     * Show terms and condition page.
     * 
     * @return
     */
    @RequestMapping("/terms")
    private String showTermsAndCondition() {
        return "terms";
    }

    /**
     * Show terms and condition page.
     * 
     * @return
     */
    @RequestMapping("/welcome")
    private String showWelcome(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Login login = (Login) session.getAttribute("login");
        model.addAttribute("offerList", offerService.getMerchantAllOffer(login.getId()));
        return "welcome";
    }

    /**
     * Check complementary code
     * 
     * @param complementry
     * @return
     */
    @RequestMapping(value = "/complementaryCode", method = RequestMethod.GET)
    @ResponseBody
    public String verifyCode(@RequestParam String complementry) {
        return registrationService.verifyCode(complementry);
    }

    /**
     * After success payment save payment inormation into database
     * 
     * @param model
     * @param request
     * @return
     */
    @SuppressWarnings("rawtypes")
    @RequestMapping(value = "/paymentSuccess")
    private String getPaymentData(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Login login = (Login) session.getAttribute("payment");
        String status = request.getParameter("status");
        String firstname = request.getParameter("firstname");
        String amount = request.getParameter("amount");
        String txnid = request.getParameter("txnid");
        String posted_hash = request.getParameter("hash");
        String key = request.getParameter("key");
        String productinfo = request.getParameter("productinfo");
        String email = request.getParameter("email");
        String salt = IConstant.SALT;
        Payment paymentData = new Payment();
        paymentData.setAmount(amount);
        paymentData.setCardNumber(request.getParameter("cardnum"));
        paymentData.setCardType(request.getParameter("card_type"));
        paymentData.setTxnId(txnid);
        paymentData.setStatus(status);
        login.setIsApproved(IConstant.STATUS_ACTIVE);
        paymentService.savePayment(paymentData, login);

        Enumeration paramNames = request.getParameterNames();
        Map<String, String> params = new HashMap<String, String>();
        while (paramNames.hasMoreElements()) {
            String paramName = (String) paramNames.nextElement();
            String paramValue = request.getParameter(paramName);
            params.put(paramName, paramValue);
        }

        String retHashSeq = "status|udf10|udf9|udf8|udf7|udf6|udf5|udf4|udf3|udf2|udf1|email|firstname|productinfo|amount|txnid|key";
        String[] hashVarSeq = retHashSeq.split("\\|");
        retHashSeq = salt + '|';
        for (String part : hashVarSeq) {
            retHashSeq = (empty(params.get(part))) ? retHashSeq.concat("") : retHashSeq.concat(params.get(part));
            retHashSeq = retHashSeq.concat("|");
        }
        retHashSeq = retHashSeq.substring(0, retHashSeq.length() - 1);
        String hash = hashCal("SHA-512", retHashSeq);
        if (!hash.equals(posted_hash)) {
        } else {
        }
        session.invalidate();
        return "redirect:/login";
    }

    public String hashCal(String type, String str) {
        byte[] hashseq = str.getBytes();
        StringBuffer hexString = new StringBuffer();
        try {
            MessageDigest algorithm = MessageDigest.getInstance(type);
            algorithm.reset();
            algorithm.update(hashseq);
            byte messageDigest[] = algorithm.digest();
            for (int i = 0; i < messageDigest.length; i++) {
                String hex = Integer.toHexString(0xFF & messageDigest[i]);
                if (hex.length() == IConstant.ONE)
                    hexString.append("0");
                hexString.append(hex);
            }
        } catch (NoSuchAlgorithmException nsae) {
        }
        return hexString.toString();
    }

    public boolean empty(String s) {
        if (s == null || s.trim().equals(""))
            return true;
        else
            return false;
    }
}
