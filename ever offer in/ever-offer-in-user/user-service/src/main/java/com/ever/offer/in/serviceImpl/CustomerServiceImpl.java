package com.ever.offer.in.serviceImpl;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sun.misc.BASE64Decoder;

import com.ever.offer.in.model.Address;
import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.Role;
import com.ever.offer.in.repository.AddressRepository;
import com.ever.offer.in.repository.LoginRepository;
import com.ever.offer.in.service.CustomerService;
import com.ever.offer.in.util.DateFormatUtil;
import com.ever.offer.in.util.IConstant;
import com.ever.offer.in.util.MailSend;
import com.ever.offer.in.util.MerchantUtil;

/**
 * 
 * @author meenal pathre
 *
 */
@Service
@SuppressWarnings({ "unchecked", "rawtypes", "restriction", "unused" })
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private LoginRepository loginRepository;

    @Autowired
    private AddressRepository addressRepository;

    /**
     * save the customer Information
     */
    public boolean saveCustomerInformation(Login login) {
        Login resultLogin = loginRepository.findByUserName(login.getUserName());
        if (null != resultLogin) {
            if (login.getType() == IConstant.ONE) {
                resultLogin.getAddress().setContactEmail(login.getUserName());
            } else {
                resultLogin.getAddress().setContactNo(login.getUserName());
            }
            resultLogin.setCreatedDate(DateFormatUtil.getDate());
            resultLogin.setUpdatedDate(DateFormatUtil.getDate());
            resultLogin.setOtpCode(login.getOtpCode());
            resultLogin.setPassword(login.getPassword());
            loginRepository.save(resultLogin);
            if (login.getType() == IConstant.ONE) {
                MailSend.sendOTPMessage(resultLogin);
            }
            return true;
        } else {
            Role role = new Role();
            role.setId(3);
            Address address = new Address();
            if (login.getType() == IConstant.ONE) {
                address.setContactEmail(login.getUserName());
            } else {
                address.setContactNo(login.getUserName());
            }
            if (login != null) {
                login.setAddress(address);
                login.setRole(role);
                login.setCreatedDate(DateFormatUtil.getDate());
                login.setUpdatedDate(DateFormatUtil.getDate());
                loginRepository.save(login);
                if (login.getType() == IConstant.ONE) {
                    MailSend.sendOTPMessage(login);
                }
                return true;
            } else {
                return false;
            }
        }
    }

    /**
     * Check customer already exist or not
     */
    public boolean checkCustomerRegistration(String userName) {
        Login login = loginRepository.findByUserNameAndIsApproved(userName, IConstant.IS_APPROVED);
        if (null != login) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Set customer status
     */
    public boolean approveCustomer(String userName, String otpCode) {
        Login login = loginRepository.findByUserNameAndOtpCode(userName, otpCode);
        if (null != login) {
            login.setIsApproved(IConstant.IS_APPROVED);
            loginRepository.save(login);
            return true;
        } else {
            return false;
        }
    }

    /**
     * Update customer profile based on customerId
     */
    public List updateProfile(Address address) {
        Login login = loginRepository.findOne(address.getId());
        login.getAddress().setAddressFirst(address.getAddressFirst());
        login.getAddress().setContactNo(address.getContactNo());
        login.getAddress().setContactEmail(address.getContactEmail());
        if (null != address.getPassword()) {
            login.setPassword(address.getPassword());
        }
        String imageBase = address.getImage();
        ImageReader read = null;
        BufferedImage bufferedImage = null;
        byte[] imageByte;
        try {
            BASE64Decoder decoder = new BASE64Decoder();
            imageByte = decoder.decodeBuffer(imageBase);
            ByteArrayInputStream bis = new ByteArrayInputStream(imageByte);
            bufferedImage = ImageIO.read(bis);
            ImageInputStream iis = ImageIO.createImageInputStream(new ByteArrayInputStream(imageByte));
            Iterator<ImageReader> readers = ImageIO.getImageReaders(iis);
            while (readers.hasNext()) {
                read = readers.next();
                System.out.println("format name = " + read.getFormatName());
            }
            String randomNumber = MerchantUtil.randomString();
            ImageIO.write(bufferedImage, read.getFormatName(), new File(IConstant.FILE_PATH + "/" + login.getUserName()
                            + randomNumber + "." + read.getFormatName()));
            login.setImage(login.getUserName() + randomNumber + "." + read.getFormatName());
            bis.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Login result = loginRepository.save(login);
        List loginList = new ArrayList();
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
        if (result.getAddress() != null) {
            loginMap.put("addressFirst", result.getAddress().getAddressFirst());
        } else {
            loginMap.put("addressFirst", "");
        }

        loginList.add(loginMap);
        return loginList;
    }
}
