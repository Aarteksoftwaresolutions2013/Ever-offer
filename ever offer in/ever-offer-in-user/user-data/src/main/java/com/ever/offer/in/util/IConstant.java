package com.ever.offer.in.util;

public class IConstant {

    public static final String SALT = "kcIzzgdR";

    public static final String INVALID_LOGIN_MESSAGE = "Invalid user name and password";
    public static final String REGISTRATION_SUCCESSFUL = "Registration successful.";
    public static final String CONTACT = "We will get back to you soon.";
    public static final String FROM_EMAIL_ID = "hr@everoffer.in";
    public static final String FROM_PASSWORD = "everoffer2015";
    public static final String MERCHANT_URL = "http://everoffer.in/login";

    public static final int IS_APPROVED = 1;
    public static final int IS_NOT_APPROVED = 0;
    public static final int THREE = 3;
    public static final String LOGOUT_SUCCESSFUL = "Logout successful";
    public static final String ACCOUNT_EXPIRED = "Your account has been expired";
    public static final String MAKE_PAYMENT = "Please complete your payment then login";
    public static final String INVALID_COMPLEMENTRY_CODE = "Comlementry code is invalid";
    public static final String VALID_UP_TO_DATE_FORMAT = "dd-MM-yyyy";
    public static final int STATUS = 0;
    public static final int STATUS_ACTIVE = 1;
    public static final int ONE = 1;
    public static final int ZERO = 0;
    public static final int NO_OF_DAYS_REMAINING = 30;
    public static final double DISTANCE = 10.0;
    public static final int WEEK = 7;
    public static final int NO_OF_OFFER_FOR_LARGE_MERCHANT = 3;

    /* No of days remaining for registration */
    public static final int NO_OF_DAYS_FOR_COMPLEMENTARY = 30;
    public static final int NO_OF_DAYS_FOR_THIRTY_DAYS_SUBSCRIPTION = 120;
    public static final int NO_OF_DAYS_FOR_THREE_MONTH_SUBSCRIPTION = 180;
    public static final int NO_OF_DAYS_FOR_SIX_MONTHS_SUBSCRIPTION = 270;
    public static final int NO_OF_DAYS_FOR_ONE_YEAR_SUBSCRIPTION = 450;

    /* It is used for login web service for web service */
    public static final String RESPONSE = "response";
    public static final String DATA = "DATA";
    public static final String PASSWORD = "PASSWORD";
    public static final String MESSAGE = "MESSAGE";
    public static final String RESPONSE_SUCCESS_MESSAGE = "200";
    public static final String LOGIN_MESSAGE = "Merchant logged in";
    public static final String RESPONSE_NO_DATA_MESSAGE = "400";
    public static final String INVALID_LOGIN = "invalid userName or password";

    /* It is used for customer registration message for web service */
    public static final String SUCCESS_MESSAGE = "Customer save successfully";
    public static final String FAILUR_MESSAGE = "Please try again!";

    public static final String CUSTOMER_ALREADY_EXIST = "Customer already exist";

    /* It is used for offer message for web service */
    public static final String ALL_OFFER_LIST = "All offer list";
    public static final String NO_DATA_FOUND = "No data found";

    // public static final String FILE_PATH = "D:/demo";

    public static final String FILE_PATH = "/home/everoffer/appservers/apache-tomcat-7x/webapps/upload";

    public static final String WEBSERVICE_FILE_PATH = "http://everoffer.in/upload";

    public static final String ADVERTISEMENT_IMAGE = "http://everoffer.in/advImage";

    public static final String OFFER_SPLIT = "@#";

    /*** For merchant subscription plan */
    public static final int THIRTY_DAYS_SUBSCRIPTION = 1;
    public static final int THREE_MONTH_SUBSCRIPTION = 2;
    public static final int SIX_MONTHS_SUBSCRIPTION = 3;
    public static final int ONE_YEAR_SUBSCRIPTION = 4;

    /*** check subscription plan for offer limit */
    public static final int OFFER_LIMIT_OF_COMPLEMENTARY_CODE = 3;
    public static final int OFFER_LIMIT_OF_THIRTY_DAYS_SUBSCRIPTION = 3;
    public static final int OFFER_LIMIT_OF_THREE_MONTH_SUBSCRIPTION = 3;
    public static final int OFFER_LIMIT_OF_SIX_MONTHS_SUBSCRIPTION = 3;
    public static final int OFFER_LIMIT_OF_ONE_YEAR_SUBSCRIPTION = 3;

    /*** check subscription plan for combo offer limit */
    public static final int OFFER_LIMIT_OF_COMBO_THIRTY_DAYS_SUBSCRIPTION = 3;
    public static final int OFFER_LIMIT_OF_COMBO_THREE_MONTH_SUBSCRIPTION = 3;
    public static final int OFFER_LIMIT_OF_COMBO_SIX_MONTHS_SUBSCRIPTION = 3;
    public static final int OFFER_LIMIT_OF_COMBO_ONE_YEAR_SUBSCRIPTION = 3;

    /*** For merchant registration type */
    public static final int COMPLEMENTRY_TYPE = 1;
    public static final int SUBSCRIPTION_TYPE = 2;

    public static final String VERIFIED = "Customer successful verified";

    public static final String NOT_FOUND = "Not found customer";
    public static final String UPDATED_PROFILE = "Customer profile updated";

    /** For manager,supervisor and employee status */
    public static final int IS_DELETED = 1;
    public static final int IS_DELETED_DEACTIVE = 0;

    /*** For merchant subscription plan amount */
    public static final String THIRTY_DAYS_SUBSCRIPTION_SMALL_AMOUNT = "400";
    public static final String THREE_MONTH_SUBSCRIPTION_SMALL_AMOUNT = "900";
    public static final String SIX_MONTHS_SUBSCRIPTION_SMALL_AMOUNT = "1500";
    public static final String ONE_YEAR_SUBSCRIPTION_SMALL_AMOUNT = "2500";

    public static final String THIRTY_DAYS_SUBSCRIPTION_COMBO_AMOUNT = "650";
    public static final String THREE_MONTH_SUBSCRIPTION_COMBO_AMOUNT = "1500";
    public static final String SIX_MONTHS_SUBSCRIPTION_COMBO_AMOUNT = "2000";
    public static final String ONE_YEAR_SUBSCRIPTION_COMBO_AMOUNT = "4000";

    public static final int IS_END_VALIDITY = 2;

    public static final String PRODUCT_INFO = "everoffer subscription";
    public static final String SUCCESS_URL = "http://everoffer.in/paymentSuccess";
    public static final String FAILURE_URL = "http://everoffer.in/registration";

    public static final String FIRST_NO_OFFER = "Presently there is no Offer in ";
    public static final String SECOND_NO_OFFER = ". In Order to upload your offers please login in Merchant login section and upload offers or contact EverOffer.";

    public static final String BASE64_STRING = "data:image/jpeg;base64,";
    public static final String DEFAULT_IMAGE_URL = "resources/images/Logo.png";

    public static final String INVALID = "Invalid Transaction. Please try again";
    public static final String OFFER_SUCCESS_MESSAGE = "Offer successfully added.";
    public static final String OFFER_LIMIT = "Your offer limit get exceeded. Please increase your subscription to add more offers.";
    public static final String FEEDBACK_SUCCESS_MESSAGE = "We will get back you soon!";
    public static final String FORGOTPASSWORD_SUCCESS_MESSAGE = "Please check your email for password";

    public static final String JPG = "jpg";
    public static final String PNG = "png";
    public static final String BPG = "bpg";
    public static final String JPEG = "jpeg";

    public static final String OFFER_SUCCESS = "Your offer code use successful";
    public static final String OFFER_FAILURE = "Your offer code already used , please use other code";
}
