<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
    content="Real Home  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<link rel="stylesheet" href="http://cdn.jsdelivr.net/fontawesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/validationEngine.jquery.css" type="text/css" />
<script src="resources/js/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
<script src="resources/js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="resources/js/commonForFormValidation.js"></script>
<link rel="stylesheet" href="resources/css/message.css" type="text/css" />
</head>
<body>
    <!--start-albums-->
    <div class="clearfix"></div>
    <!--contact-->
    <div class="contact">
        <div class="container">
            <h3 class="tittle">Contact</h3>
            <h3 class="msgbottom">${message}</h3>
            <div class="lcontact span_1_of_contact">
                <div class="contact-form">
                    <form:form action="saveFeedback.html" method="post" modelAttribute="ContactUs" id="formID"
                        autocomplete="off">
                        <p class="comment-form-author">
                            <label for="author">Your Name:</label>
                            <form:input path="name" class="textbox validate[required] input-text"
                                placeholder="Enter your name here..." maxlength="60" />
                        </p>
                        <p class="comment-form-author">
                            <label for="author">Email:</label>
                            <form:input path="email"
                                class="validate[required,custom[email],maxSize[50]] input-text textbox"
                                placeholder="Email" maxlength="40" />
                        </p>
                        <p class="comment-form-author">
                            <label for="author">Message:</label>
                            <form:textarea path="message" class="validate[required] input-text" rows="3"
                                placeholder="Message" maxlength="250" />
                        </p>
                        <p class="comment-form-author">
                            <label class="hvr-sweep-to-right"> <input type="submit" value="Submit">
                            </label>
                        </p>
                    </form:form>
                </div>
            </div>
            <div class="contact_grid span_2_of_contact_right">
                <h3>Address</h3>
                <div class="address">
                    <i class="pin_icon"></i>
                    <div class="contact_address">Global Creation Services Private Limited Yukti Computers, Bypass
                        (Kali), Karanja (Lad) District: Wasim, Pin Code: 444105 Maharashtra, India</div>
                    <div class="clearfix"></div>
                </div>
                <div class="address">
                    <i class="phone"></i>
                    <div class="contact_address">+917264913109</div>
                    <div class="clearfix"></div>
                </div>
                <div class="address">
                    <i class="mail"></i>
                    <div class="contact_email">
                        <a href="mailto:ceo@everoffer.in">ceo@everoffer.in</a><br> <a
                            href="mailto:info@everoffer.in">info@everoffer.in</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="address">
                    <ul class="social">
                        <li><a href="https://www.facebook.com/everofferin-899034306817510/" target="_blank"><i
                                class="fb"> </i> </a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="map">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59800.472857303386!2d77.44914948259466!3d20.48450684158009!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd1372f1cf7a20d%3A0xc53c51327fef4121!2sKaranja+Lad%2C+Maharashtra+444105!5e0!3m2!1sen!2sin!4v1450265455173"
                    width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</body>
</html>