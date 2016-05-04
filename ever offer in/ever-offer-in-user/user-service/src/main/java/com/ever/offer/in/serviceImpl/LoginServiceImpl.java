package com.ever.offer.in.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ever.offer.in.model.Login;
import com.ever.offer.in.repository.LoginRepository;
import com.ever.offer.in.service.LoginService;
import com.ever.offer.in.util.IConstant;

@Service
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginRepository loginRepository;

    /**
     * Check merchant emailId and password.
     * 
     */
    public Login merchantLogin(Login login) {
        return loginRepository.findByUserNameAndPassword(login.getUserName(), login.getPassword());
    }

    /**
     * Check customer login
     */

    public List customerLogin(Login login) {
        List loginList = new ArrayList();
        Login result = loginRepository.findByUserNameAndPasswordAndIsApproved(login.getUserName(), login.getPassword(),
                        IConstant.IS_APPROVED);
        if (null != result) {
            Map loginMap = new HashMap();
            loginMap.put("id", result.getId());
            loginMap.put("userName", result.getUserName());
            loginMap.put("contactNumber", result.getAddress().getContactNo());
            loginMap.put("emailId", result.getAddress().getContactEmail());
            loginMap.put("password", result.getPassword());
            if (null != result.getImage()) {
                loginMap.put("image", IConstant.WEBSERVICE_FILE_PATH + "/" + result.getImage());
            } else {
                loginMap.put("image", result.getImage());
            }
            if (null != result.getAddress()) {
                loginMap.put("addressFirst", result.getAddress().getAddressFirst());
            } else {
                loginMap.put("addressFirst", "");
            }
            loginList.add(loginMap);
            return loginList;
        } else {
            return null;
        }
    }

    /**
     * Find get by id
     */
    public Login getById(Integer id) {
        return loginRepository.findOne(id);
    }

    /**
     * Get password based on username
     */
    public Login getPassword(Login login) {
        return loginRepository.findByUserNameAndIsApproved(login.getUserName(), IConstant.IS_APPROVED);
    }
}
