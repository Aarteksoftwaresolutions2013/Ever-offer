package com.ever.offer.in.ws;

import java.text.DecimalFormat;
import java.util.ArrayList;
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
import com.ever.offer.in.model.Advertisement;
import com.ever.offer.in.model.City;
import com.ever.offer.in.model.Offer;
import com.ever.offer.in.service.AddressService;
import com.ever.offer.in.service.MapService;
import com.ever.offer.in.util.CalculateDistance;
import com.ever.offer.in.util.IConstant;

/**
 * 
 * @author meenal pathre
 *
 */
@SuppressWarnings({ "unchecked", "rawtypes" })
@Controller
public class AddressWSController {

    @Autowired
    private MapService mapService;

    @Autowired
    private AddressService addressService;

    /**
     * This method is used for get the all information into address and login table corresponding letitude and
     * longitude.
     * 
     * @param address
     * @param response
     * @return
     */
    @RequestMapping(value = "/allOfferDetails", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> getStudentLoginDetail(@RequestBody Address address,
                    HttpServletResponse response) {
        Map<Object, Object> allOffers = new HashMap<Object, Object>();
        List<Offer> mapDetailsList = mapService.getMapDetails(Double.parseDouble(address.getLetitude()),
                        Double.parseDouble(address.getLongitude()));
        List<Advertisement> advList = mapService.getAdvertisement(Double.parseDouble(address.getLetitude()),
                        Double.parseDouble(address.getLongitude()));
        List offerList = getOfferList(mapDetailsList, address);
        List advertisementList = advertisement(advList);
        if (offerList != null) {
            allOffers.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            allOffers.put("OfferList", offerList);
            allOffers.put("advertisementList", advertisementList);
        } else {
            allOffers.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            allOffers.put(IConstant.MESSAGE, IConstant.NO_DATA_FOUND);
        }
        return allOffers;
    }

    /**
     * Create map response list from offerlist
     * 
     * @param mapDetailsList
     * @param address
     * @return
     */
    private List getOfferList(List<Offer> mapDetailsList, Address address) {
        List OfferList = new ArrayList();
        if (mapDetailsList != null && !mapDetailsList.isEmpty()) {
            for (Offer offer : mapDetailsList) {
                Map map = new HashMap();
                map.put("id", offer.getId());
                map.put("address", offer.getLogin().getAddress().getAddressFirst() + " "
                                + offer.getLogin().getAddress().getAddressSecond() + ""
                                + offer.getLogin().getAddress().getAddressThird());
                map.put("zipCode", offer.getLogin().getAddress().getPinCode());
                map.put("latitude", offer.getLogin().getAddress().getLetitude());
                map.put("longitude", offer.getLogin().getAddress().getLongitude());
                map.put("offerDescription", offer.getOfferDescription());
                map.put("offerStartTime", offer.getOfferStartTime());
                map.put("offerEndTime", offer.getOfferEndTime());
                map.put("offerValidity", offer.getOfferValidity());
                map.put("offerCoupanCode", offer.getOfferCoupanCode());
                map.put("offerHeading", offer.getOfferHeading());
                map.put("termsAndConditions", offer.getTermsAndConditions());
                map.put("image", IConstant.WEBSERVICE_FILE_PATH + "/" + offer.getImage());
                map.put("normalPrice", offer.getNormalPrice());
                map.put("noOfPersion", offer.getNoOfCouponsPerPerson());
                map.put("offerPrice", offer.getOfferPrice());
                if (address.getLetitude() != null) {
                    Double distance = CalculateDistance.distance(Double.parseDouble(address.getLetitude()),
                                    Double.parseDouble(address.getLongitude()),
                                    Double.parseDouble(offer.getLogin().getAddress().getLetitude()),
                                    Double.parseDouble(offer.getLogin().getAddress().getLongitude()), 'K');
                    DecimalFormat df = new DecimalFormat("#.00");
                    String angleFormated = df.format(distance);
                    map.put("distance", angleFormated);
                } else {
                    map.put("distance", IConstant.ZERO);
                }
                if (offer.getRateType() == 1) {
                    map.put("discount", offer.getRateValue() + "%");
                    map.put("flat", "0");
                } else {
                    map.put("flat", offer.getRateValue());
                    map.put("discount", "0");
                }
                OfferList.add(map);
            }
            return OfferList;
        } else {
            return null;
        }
    }

    /**
     * Get all cities
     * 
     * @return
     */
    @RequestMapping(value = "/allCities", method = RequestMethod.GET)
    public @ResponseBody Map<Object, Object> getAllCities() {
        Map<Object, Object> cityMap = new HashMap<Object, Object>();
        List cityList = addressService.getCities();
        if (cityList != null) {
            cityMap.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            cityMap.put(IConstant.DATA, cityList);
        } else {
            cityMap.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            cityMap.put(IConstant.MESSAGE, IConstant.NO_DATA_FOUND);
        }
        return cityMap;
    }

    /**
     * Get offer list based on city
     * 
     * @param city
     * @return
     */
    @RequestMapping(value = "/offerDetailByCity", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> offerDetailByCity(@RequestBody final City city) {
        Map<Object, Object> offerBasedOnCity = new HashMap<Object, Object>();
        List<Offer> cityDetailsList = mapService.getAllOffersByCityId(city.getId());
        List<Advertisement> advertisements = mapService.getAllAdvertisementByCity(city.getId());
        List advertisementList = advertisement(advertisements);
        Address address = new Address();
        address.setLetitude(city.getLetitude());
        address.setLongitude(city.getLongitude());
        List offerList = getOfferList(cityDetailsList, address);
        if (offerList != null) {
            offerBasedOnCity.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            offerBasedOnCity.put("OfferList", offerList);
            offerBasedOnCity.put("advertisementList", advertisementList);
        } else {
            offerBasedOnCity.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            offerBasedOnCity.put(IConstant.MESSAGE, IConstant.NO_DATA_FOUND);
        }
        return offerBasedOnCity;
    }

    /**
     * Create advertisement list
     * 
     * @param advList
     * @return
     */
    private List advertisement(List<Advertisement> advList) {
        List adverList = new ArrayList();
        if (advList != null && !advList.isEmpty()) {
            for (Advertisement advertisement : advList) {
                Map map = new HashMap();
                map.put("image", IConstant.ADVERTISEMENT_IMAGE + "/" + advertisement.getImage());
                adverList.add(map);
            }
            return adverList;
        } else {
            Map map = new HashMap();
            map.put("image", IConstant.ADVERTISEMENT_IMAGE + "/offer.jpg");
            adverList.add(map);
            return adverList;
        }
    }

    /**
     * Show promotional image
     * 
     * @return
     */
    @RequestMapping(value = "/promotionalImage", method = RequestMethod.GET)
    public @ResponseBody Map<Object, Object> allPromotiona() {
        Map<Object, Object> promotionalImage = new HashMap<Object, Object>();
        Map<String, String> image = new HashMap<String, String>();
        image.put("type", "image");
        image.put("image", IConstant.ADVERTISEMENT_IMAGE + "/offer.jpg");
        if (!image.isEmpty()) {
            promotionalImage.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            promotionalImage.put(IConstant.DATA, image);
        } else {
            promotionalImage.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            promotionalImage.put(IConstant.MESSAGE, IConstant.NO_DATA_FOUND);
        }
        return promotionalImage;
    }
}
