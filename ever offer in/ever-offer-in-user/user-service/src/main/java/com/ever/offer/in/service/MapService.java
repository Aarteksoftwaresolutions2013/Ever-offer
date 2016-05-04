/**
 * 
 */
package com.ever.offer.in.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ever.offer.in.model.Advertisement;
import com.ever.offer.in.model.City;
import com.ever.offer.in.model.Offer;

/**
 * @author Patidar
 *
 */
@Service
public interface MapService {

	/**
	 * Get details for map
	 * 
	 * @author Patidar
	 * @param longitude
	 * @param letitude
	 * @return
	 */
	List<Offer> getMapDetails(Double letitude, Double longitude);

	public List<City> getAllCities();

	public List<Offer> getAllOffers();

	public List<Offer> getAllOffersByCityId(Integer id);

	List<Offer> getOfferById(Integer loginId);

	List<Offer> showOfferDetailsById(Integer offerId);

	City getCityName(Integer id);

    List<Advertisement> getAdvertisement(Double letitude, Double longitude);

    List<Advertisement> getAllAdvertisementByCity(Integer id);


}
