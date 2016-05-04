/**
 * 
 */
package com.ever.offer.in.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ever.offer.in.model.Advertisement;
import com.ever.offer.in.model.City;
import com.ever.offer.in.model.Offer;
import com.ever.offer.in.repository.AdvertisementRepository;
import com.ever.offer.in.repository.CityRepository;
import com.ever.offer.in.repository.ContactUsRepository;
import com.ever.offer.in.repository.LoginRepository;
import com.ever.offer.in.repository.MapRepository;
import com.ever.offer.in.repository.OfferRepository;
import com.ever.offer.in.service.MapService;
import com.ever.offer.in.util.IConstant;

@Transactional
@Service
public class MapServiceImpl implements MapService {

    @Autowired
    private MapRepository mapRepository;

    @Autowired
    private CityRepository cityRepository;

    @Autowired
    private OfferRepository offerRepository;

    @Autowired
    private LoginRepository loginRepository;

    @Autowired
    private ContactUsRepository contactUsRepository;

    @Autowired
    private AdvertisementRepository advertisementRepository;

    /**
     * Get offer details beased on letitude and longitude
     */
    public List<Offer> getMapDetails(Double letitude, Double longitude) {
        double distance = IConstant.DISTANCE;
        return mapRepository.getMapDetails(letitude, longitude, distance);
    }

    /**
     * Get all approved offers
     */
    public List<Offer> getAllOffers() {
        return offerRepository.findByIsApproved(IConstant.IS_APPROVED);
    }

    /**
     * Get offer based on city
     */
    public List<Offer> getAllOffersByCityId(Integer id) {
        return offerRepository.findByLoginAddressCityIdAndIsApproved(id, IConstant.IS_APPROVED);
    }

    /**
     * Get offer based on loginId
     */
    public List<Offer> getOfferById(Integer loginId) {
        return offerRepository.findByLoginIdAndIsApproved(loginId, IConstant.IS_APPROVED);
    }

    /**
     * Get offer based on offerId
     */
    public List<Offer> showOfferDetailsById(Integer offerId) {
        return offerRepository.findById(offerId);

    }

    /**
     * Get city based on id
     */
    public City getCityName(Integer id) {
        return cityRepository.findOne(id);
    }

    /**
     * Get all cities
     */
    public List<City> getAllCities() {
        return cityRepository.findAll(new Sort(Sort.Direction.ASC, "cityName"));
    }

    /**
     * Get all advertisement based on letitude and longitude
     */
    public List<Advertisement> getAdvertisement(Double letitude, Double longitude) {
        double distance = IConstant.DISTANCE;
        return advertisementRepository.getAdvList(letitude, longitude, distance);
    }

    /**
     * Get all advertisement based on city
     */
    public List<Advertisement> getAllAdvertisementByCity(Integer cityId) {
        return advertisementRepository.findByCityIdAndIsApproved(cityId, IConstant.IS_APPROVED);
    }
}
