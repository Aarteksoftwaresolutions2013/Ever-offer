package com.ever.offer.in.util;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.ever.offer.in.model.ContactUs;
import com.ever.offer.in.model.Login;

public class MailSend {

    public static String sendMail(Login login) {
        try {
            Message message = new MimeMessage(SendMailProperty.mailProperty());

            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(login.getAddress().getContactEmail()));
            message.setSubject("Regards:registration confirmation");
            String msg = "Dear " + login.getName() + ",<br>";
            msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank you for registering. You have been registered with everOffer. if you want to login please click link below and access your everOffer account:<br>";
            msg += " <br>";
            msg += "<b>User Name:</b>" + login.getUserName() + " <br>";
            msg += "<b>Password :</b>" + login.getPassword() + " <br>";
            msg += " <br>";
            msg += IConstant.MERCHANT_URL + " <br>";// used
            msg += " <br>";
            msg += " <br>";
            msg += "<b>Regards,</b><br>";
            msg += "Ever Offer";
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static String sendOTPMessage(Login login) {
        try {
            Message message = new MimeMessage(SendMailProperty.mailProperty());

            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(login.getAddress().getContactEmail()));
            message.setSubject("Regards:OTP message");
            String msg = "Dear <br>";
            msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank you for registering. You have been registered with everOffer. if you want to login please use below OTP code:<br>";
            msg += " <br>";
            msg += "<b>OTP code:</b>" + login.getOtpCode() + " <br>";
            msg += " <br>";
            msg += " <br>";
            msg += "<b>Regards,</b><br>";
            msg += "Ever Offer";
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static String forgotPasswordEmail(Login login) {
        try {
            Message message = new MimeMessage(SendMailProperty.mailProperty());

            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(login.getUserName()));
            message.setSubject("Regards:Forgot password");
            String msg = "Dear <br>";
            msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We have received a request to email your password .Please find your log-in credentials below::<br>";
            msg += " <br>";
            msg += " <br>";
            msg += "Username : " + login.getUserName() + "<br>";
            msg += "Password : " + login.getPassword() + "<br>";
            msg += " <br>";
            msg += " <br>";
            msg += " <br>";
            msg += "<b>Regards,</b><br>";
            msg += "Ever Offer";
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static String feedBackMessage(ContactUs contactUs) {
        try {
            Message message = new MimeMessage(SendMailProperty.mailProperty());

            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("info@everoffer.in"));
            message.setSubject("User feedback");
            String msg = "Dear Manoj<br>";
            msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + contactUs.getMessage() + ":<br>";
            msg += " <br>";
            msg += " <br>";
            msg += "My Email Id : " + contactUs.getEmail() + "<br>";
            msg += " <br>";
            msg += " <br>";
            msg += "<b>Regards,</b><br>";
            msg += contactUs.getName();
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

}
