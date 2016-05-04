package com.ever.offer.in.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ever.offer.in.model.City;
import com.ever.offer.in.repository.CityRepository;
import com.ever.offer.in.service.AddressService;

/**
 * 
 * @author praveen
 *
 */
@Service
@SuppressWarnings({ "unchecked", "rawtypes" })
public class AddressServiceImpl implements AddressService {

    @Autowired
    private CityRepository cityRepository;

    /**
     * Get all cities name
     */
    public List getCities() {
        List<City> cities = cityRepository.findAll(new Sort(Sort.Direction.ASC, "cityName"));
        List cityList = new ArrayList();
        if (null != cities && !cities.isEmpty()) {
            for (City result : cities) {
                Map map = new HashMap();
                map.put("id", result.getId());
                map.put("cityName", result.getCityName());
                cityList.add(map);
            }
        }
        return cityList;
    }
}
