package com.ever.offer.in.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ever.offer.in.model.Login;

@Repository
public interface LoginRepository extends JpaRepository<Login, Integer> {

    /**
     * find by user name
     * 
     * @param userName
     * @return Login instance
     */
    Login findByUserName(String userName);

    /**
     * find by user name and isapproved
     * 
     * @param userName
     * @param isApproved
     * @return Login instance
     */
    Login findByUserNameAndIsApproved(String userName, Integer isApproved);

    /**
     * find by user name and otp code
     * 
     * @param userName
     * @param otpCode
     * @return Login instance
     */
    Login findByUserNameAndOtpCode(String userName, String otpCode);

    /**
     * find by user name , password and isApproved
     * 
     * @param userName
     * @param password
     * @param isApproved
     * @return Login instance
     */
    Login findByUserNameAndPasswordAndIsApproved(String userName, String password, Integer isApproved);

    /**
     * find by user name and password
     * 
     * @param userName
     * @param password
     * @return Login instance
     */
    Login findByUserNameAndPassword(String userName, String password);
}
