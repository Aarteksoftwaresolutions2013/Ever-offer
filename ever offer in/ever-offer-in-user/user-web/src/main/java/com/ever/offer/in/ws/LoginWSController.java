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

import com.ever.offer.in.model.Login;
import com.ever.offer.in.service.LoginService;
import com.ever.offer.in.util.IConstant;
import com.ever.offer.in.util.MailSend;

/**
 * 
 * @author Meenal Pathre
 *
 */
@Controller
@SuppressWarnings("rawtypes")
public class LoginWSController {

    @Autowired
    private LoginService loginService;

    /**
     * check userName and password
     * 
     * @param login
     * @param response
     * 
     * @return
     */
    @RequestMapping(value = "/customerSignIn", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> getStudentLoginDetail(@RequestBody Login login,
                    HttpServletResponse response) {
        Map<Object, Object> customerSignIn = new HashMap<Object, Object>();
        List logins = loginService.customerLogin(login);
        if (logins != null) {
            customerSignIn.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            customerSignIn.put(IConstant.DATA, logins.get(IConstant.ZERO));
        } else {
            customerSignIn.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            customerSignIn.put(IConstant.MESSAGE, IConstant.INVALID_LOGIN);
        }
        return customerSignIn;
    }

    /**
     * Send password by email
     * 
     * @param login
     * @param response
     * @return
     */
    @RequestMapping(value = "/forgotPassword", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> forgotPassword(@RequestBody Login login, HttpServletResponse response) {
        Map<Object, Object> formgotPassword = new HashMap<Object, Object>();
        Login result = loginService.getPassword(login);
        if (result != null) {
            formgotPassword.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            if (login.getType() == IConstant.IS_APPROVED) {
                MailSend.forgotPasswordEmail(result);
                formgotPassword.put(IConstant.MESSAGE, IConstant.FORGOTPASSWORD_SUCCESS_MESSAGE);
            } else {
                formgotPassword.put(IConstant.DATA, result.getPassword());
            }
        } else {
            formgotPassword.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            formgotPassword.put(IConstant.MESSAGE, IConstant.NOT_FOUND);
        }
        return formgotPassword;
    }
}
