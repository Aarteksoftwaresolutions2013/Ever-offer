package com.ever.offer.in.serviceImpl;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.w3c.dom.Document;

import com.ever.offer.in.model.City;
import com.ever.offer.in.model.ComplementaryCode;
import com.ever.offer.in.model.Login;
import com.ever.offer.in.model.State;
import com.ever.offer.in.repository.CityRepository;
import com.ever.offer.in.repository.ComplementaryCodeRepository;
import com.ever.offer.in.repository.LoginRepository;
import com.ever.offer.in.repository.StateRepository;
import com.ever.offer.in.service.RegistrationService;
import com.ever.offer.in.util.DateFormatUtil;
import com.ever.offer.in.util.IConstant;
import com.ever.offer.in.util.ImageUploadUtils;
import com.ever.offer.in.util.MailSend;

/**
 * @author Vipul
 *
 */

@Transactional
@Service
public class RegistrationServiceImpl implements RegistrationService {

    @Autowired
    private LoginRepository loginRepository;

    @Autowired
    private CityRepository cityRepository;

    @Autowired
    private StateRepository stateRepository;

    @Autowired
    private ComplementaryCodeRepository codeRepository;

    /**
     * Save merchant information into data base and generate letitude and longitude
     * 
     * @throws Exception
     */
    public void registration(Login login, CommonsMultipartFile[] upload) {
        City city = cityRepository.findOne(login.getAddress().getCity().getId());
        State state = stateRepository.findOne(login.getAddress().getState().getId());
        String firstAddress = null;
        String secondAddress = null;
        String imagename = null;

        if (null == login.getAddress().getAddressSecond()) {
            firstAddress = "";
        } else {
            firstAddress = login.getAddress().getAddressSecond();
        }
        if (null == login.getAddress().getAddressThird()) {
            secondAddress = "";
        } else {
            secondAddress = login.getAddress().getAddressThird();
        }

        String address = login.getAddress().getAddressFirst() + "," + firstAddress + "," + secondAddress + ","
                        + city.getCityName() + "," + state.getStateName() + "," + login.getAddress().getPinCode();

        String latLongs[] = null;
        try {
            latLongs = getLatLongPositions(address);
        } catch (Exception e) {
            e.printStackTrace();
        }
        login.getAddress().setLetitude(latLongs[IConstant.ZERO]);
        login.getAddress().setLongitude(latLongs[IConstant.ONE]);

        imagename = ImageUploadUtils.getImage(upload);
        login.setImage(imagename);
        Calendar calendar = new GregorianCalendar();

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(IConstant.VALID_UP_TO_DATE_FORMAT);
        Date date = calendar.getTime();
        if (login.getRegistrationType() == IConstant.COMPLEMENTRY_TYPE) {
            calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_COMPLEMENTARY);
            String strDate = simpleDateFormat.format(date);
            login.setTimePeriod(strDate);
            ComplementaryCode complementryCode = codeRepository.findByComplementaryCodeAndStatus(
                            login.getComplementry(), IConstant.STATUS);
            complementryCode.setStatus(IConstant.STATUS_ACTIVE);
            login.setIsApproved(IConstant.STATUS_ACTIVE);
        }

        else if (login.getRegistrationType() == IConstant.SUBSCRIPTION_TYPE) {
            if (login.getSubscriptionPlan() == IConstant.THIRTY_DAYS_SUBSCRIPTION) {
                calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_THIRTY_DAYS_SUBSCRIPTION);
                String strDate = simpleDateFormat.format(date);
                login.setTimePeriod(strDate);
            } else if (login.getSubscriptionPlan() == IConstant.THREE_MONTH_SUBSCRIPTION) {
                calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_THREE_MONTH_SUBSCRIPTION);
                String strDate = simpleDateFormat.format(date);
                login.setTimePeriod(strDate);

            } else if (login.getSubscriptionPlan() == IConstant.SIX_MONTHS_SUBSCRIPTION) {
                calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_SIX_MONTHS_SUBSCRIPTION);
                String strDate = simpleDateFormat.format(date);
                login.setTimePeriod(strDate);
            } else if (login.getSubscriptionPlan() == IConstant.ONE_YEAR_SUBSCRIPTION) {
                calendar.add(Calendar.DATE, IConstant.NO_OF_DAYS_FOR_ONE_YEAR_SUBSCRIPTION);
                String strDate = simpleDateFormat.format(date);
                login.setTimePeriod(strDate);
            }
            login.setIsApproved(IConstant.STATUS);
        }
        login.setCreatedDate(DateFormatUtil.getDate());
        login.setUpdatedDate(DateFormatUtil.getDate());
        if (IConstant.ZERO == login.getEmployee().getId()) {
            login.setEmployee(null);
        }
        loginRepository.save(login);
        if (login.getEmailId() != null && !login.getEmailId().isEmpty()) {
            MailSend.sendMail(login);
        }
    }

    /**
     * find latitude and longitude from address
     * 
     * @param address
     * @return
     * @throws Exception
     */
    public static String[] getLatLongPositions(String address) throws Exception {
        int responseCode = 0;
        String api = "http://maps.googleapis.com/maps/api/geocode/xml?address=" + URLEncoder.encode(address, "UTF-8")
                        + "&sensor=true";
        URL url = new URL(api);
        HttpURLConnection httpConnection = (HttpURLConnection) url.openConnection();
        httpConnection.connect();
        responseCode = httpConnection.getResponseCode();
        if (responseCode == 200) {
            DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            ;
            Document document = builder.parse(httpConnection.getInputStream());
            XPathFactory xPathfactory = XPathFactory.newInstance();
            XPath xpath = xPathfactory.newXPath();
            XPathExpression expr = xpath.compile("/GeocodeResponse/status");
            String status = (String) expr.evaluate(document, XPathConstants.STRING);
            if (status.equals("OK")) {
                expr = xpath.compile("//geometry/location/lat");
                String latitude = (String) expr.evaluate(document, XPathConstants.STRING);
                expr = xpath.compile("//geometry/location/lng");
                String longitude = (String) expr.evaluate(document, XPathConstants.STRING);
                return new String[] { latitude, longitude };
            } else {
                throw new Exception("Error from the API - response status: " + status);
            }
        }
        return null;
    }

    /**
     * Get all state names
     */
    public List<State> getAllStates() {
        return stateRepository.findAll();
    }

    /**
     * Get city name based on city
     */
    public List<City> getCities(int stateId) {
        return cityRepository.findAllByStateId(new Sort(Sort.Direction.ASC, "cityName"), stateId);
    }

    /**
     * Find user by userName
     */
    public String verifyUsername(String userName) {
        Login login = loginRepository.findByUserName(userName);
        if (null == login) {
            return "false";
        } else {
            return "true";
        }
    }

    /**
     * Check complementry is exist or not
     */
    public String verifyCode(String complementry) {
        ComplementaryCode login = codeRepository.findByComplementaryCodeAndStatus(complementry, IConstant.STATUS);
        if (null == login) {
            return "false";
        } else {
            return "true";
        }
    }

    /**
     * Change login status
     */
    public void changeIsApproved(Login login) {
        login.setIsApproved(IConstant.STATUS);
        loginRepository.save(login);

    }

    /**
     * Save login
     */
    public void updatePlan(Login login) {
        loginRepository.save(login);
    }
}
