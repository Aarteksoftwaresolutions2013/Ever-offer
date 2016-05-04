package com.ever.offer.in.ws;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ever.offer.in.model.Address;
import com.ever.offer.in.model.ContactUs;
import com.ever.offer.in.model.Login;
import com.ever.offer.in.service.ContactUsService;
import com.ever.offer.in.service.CustomerService;
import com.ever.offer.in.util.IConstant;

/**
 * 
 * @author Meenal Pathre
 *
 */
@Controller
@SuppressWarnings("rawtypes")
public class CustomerWSController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ContactUsService contactUsService;

    /**
     * It is used for save the customer information
     * 
     * @param login
     * @param response
     * @return
     */
    @RequestMapping(value = "/customerRegistration", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> getStudentLoginDetail(@RequestBody Login login,
                    HttpServletResponse response) {
        boolean status = false;
        Map<Object, Object> customerRegistration = new HashMap<Object, Object>();
        boolean customerStatus = customerService.checkCustomerRegistration(login.getUserName());
        if (customerStatus) {
            customerRegistration.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            customerRegistration.put(IConstant.MESSAGE, IConstant.CUSTOMER_ALREADY_EXIST);
        } else {
            status = customerService.saveCustomerInformation(login);
            if (status == true) {
                customerRegistration.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
                customerRegistration.put(IConstant.MESSAGE, IConstant.SUCCESS_MESSAGE);
            } else {
                customerRegistration.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
                customerRegistration.put(IConstant.MESSAGE, IConstant.FAILUR_MESSAGE);
            }
        }
        return customerRegistration;
    }

    /**
     * Check opt code
     * 
     * @param login
     * @param response
     * @return
     */
    @RequestMapping(value = "/confirmCustomer", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> confirmation(@RequestBody Login login, HttpServletResponse response) {
        Map<Object, Object> confirmCustomer = new HashMap<Object, Object>();
        boolean status = customerService.approveCustomer(login.getUserName(), login.getOtpCode());
        if (status) {
            confirmCustomer.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            confirmCustomer.put(IConstant.MESSAGE, IConstant.VERIFIED);
        } else {
            confirmCustomer.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            confirmCustomer.put(IConstant.MESSAGE, IConstant.NOT_FOUND);
        }
        return confirmCustomer;
    }

    /**
     * Update customer profile
     * 
     * @param address
     * @param response
     * @return
     */
    @RequestMapping(value = "/updateCustomerProfile", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> updateProfile(@RequestBody Address address, HttpServletResponse response) {
        Map<Object, Object> updateProfile = new HashMap<Object, Object>();
        List logins = customerService.updateProfile(address);
        if (logins != null) {
            updateProfile.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            updateProfile.put(IConstant.DATA, logins.get(IConstant.ZERO));
        } else {
            updateProfile.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            updateProfile.put(IConstant.MESSAGE, IConstant.NOT_FOUND);
        }
        return updateProfile;
    }

    /**
     * Save customer feedback
     * 
     * @param contactUs
     * @param response
     * @return
     */
    @RequestMapping(value = "/feedback", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> saveFeedBack(@RequestBody ContactUs contactUs, HttpServletResponse response) {
        Map<Object, Object> feedBack = new HashMap<Object, Object>();
        boolean status = contactUsService.saveMobileFeedBack(contactUs);
        if (status) {
            feedBack.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            feedBack.put(IConstant.MESSAGE, IConstant.FEEDBACK_SUCCESS_MESSAGE);
        } else {
            feedBack.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            feedBack.put(IConstant.MESSAGE, IConstant.NOT_FOUND);
        }
        return feedBack;
    }
}
