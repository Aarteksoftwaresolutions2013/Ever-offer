package com.ever.offer.in.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ever.offer.in.model.Address;
import com.ever.offer.in.model.City;
import com.ever.offer.in.model.MapResponse;
import com.ever.offer.in.model.Offer;
import com.ever.offer.in.service.MapService;
import com.ever.offer.in.util.ConvertImage;
import com.ever.offer.in.util.IConstant;
import com.ever.offer.in.util.LatLng;

@Controller
@SuppressWarnings("unused")
public class HomeController {

    private static final Logger logger = Logger.getLogger(HomeController.class);

    @Autowired
    private MapService mapService;

    /**
     * @author Patidar show the map page
     * @param map
     * @param model
     * @return
     */
    @RequestMapping("/map")
    private String showMap(Map<String, Object> map, ModelMap model) {
        model.addAttribute("cityList", mapService.getAllCities());
        return "map";
    }

    /**
     * @author Patidar
     * @param map
     * @param model
     * @param request
     * @param message
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "showMap", method = RequestMethod.POST)
    public @ResponseBody List<MapResponse> post(@RequestBody final Address address) throws IOException {
        List<Offer> mapDetailsList = mapService.getMapDetails(Double.parseDouble(address.getLetitude()),
                        Double.parseDouble(address.getLongitude()));
        if (!mapDetailsList.isEmpty()) {
            return getMapResponse(mapDetailsList);
        } else {
            List<MapResponse> mapResponses = new ArrayList<MapResponse>();
            MapResponse mapResponse = new MapResponse();
            mapResponse.setDescription("");
            mapResponse.setTitle(IConstant.FIRST_NO_OFFER + "in your city" + IConstant.SECOND_NO_OFFER);
            mapResponse.setImage("");

            mapResponse.setLink("");
            mapResponse.setLat(address.getLetitude());
            mapResponse.setLng(address.getLongitude());
            mapResponses.add(mapResponse);
            return mapResponses;
        }

    }

    /**
     * Show map by city
     * 
     * @param city
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/showMapByCity", method = RequestMethod.POST)
    public @ResponseBody List<MapResponse> getAddressByCity(@RequestBody final City city) throws Exception {
        List<Offer> cityDetailsList = mapService.getAllOffersByCityId(city.getId());
        if (!cityDetailsList.isEmpty()) {
            return getMapResponse(cityDetailsList);
        } else {
            List<MapResponse> mapResponses = new ArrayList<MapResponse>();
            MapResponse mapResponse = new MapResponse();
            City cityName = mapService.getCityName(city.getId());

            String latLongs[] = LatLng.getLatLongPositions(cityName.getCityName());
            mapResponse.setDescription("");
            mapResponse.setTitle(IConstant.FIRST_NO_OFFER + cityName.getCityName() + IConstant.SECOND_NO_OFFER);
            mapResponse.setImage("");
            mapResponse.setLink("");

            mapResponse.setLat(latLongs[IConstant.ZERO]);
            mapResponse.setLng(latLongs[IConstant.ONE]);
            mapResponses.add(mapResponse);
            return mapResponses;
        }
    }

    /**
     * Show all offer on map.
     * 
     * @param map
     * @param model
     * @param request
     * @param message
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/showAllOffersOnMap", method = RequestMethod.GET)
    public @ResponseBody List<MapResponse> showAllOffers() throws IOException {
        List<Offer> mapDetailsList = mapService.getAllOffers();
        return getMapResponse(mapDetailsList);
    }

    /**
     * Show offer details based on offerId
     * 
     * @param map
     * @param model
     * @param offerId
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/showOfferDetails", method = { RequestMethod.GET, RequestMethod.POST })
    public String showOffer(Map<String, Object> map, ModelMap model, @RequestParam(required = false) String offerId)
                    throws IOException {
        byte[] decodedId = Base64.decodeBase64(offerId.getBytes());
        List<Offer> offerDetailsList = mapService.showOfferDetailsById(Integer.parseInt(new String(decodedId)));
        model.addAttribute("offerDetailsList", offerDetailsList);
        Offer offer = null;
        if (null != offerDetailsList && !offerDetailsList.isEmpty()) {
            offer = offerDetailsList.get(IConstant.ZERO);
            if (offer.getImage() != null && !offer.getImage().isEmpty()) {
                offer.setImage(convertBase64(IConstant.FILE_PATH + "/" + offer.getImage()));
            }
            if (offer.getLogin().getImage() != null && !offer.getLogin().getImage().isEmpty()) {
                offer.getLogin().setImage(convertBase64(IConstant.FILE_PATH + "/" + offer.getLogin().getImage()));
            } else {
                offer.getLogin().setImage(null);
            }
        }
        map.put("offer", offer);
        return "viewOffer";
    }

    /**
     * Convert image url to base64 string
     * 
     * @param url
     * @return
     * @throws IOException
     */
    private String convertBase64(String url) throws IOException {
        File file = new File(url);
        String imgaeBase64 = null;
        if (file.exists()) {
            BufferedImage bufferedImage = ImageIO.read(file);
            if (null != bufferedImage) {
                ImageInputStream imageInputStream = ImageIO.createImageInputStream(new File(url));
                Iterator<ImageReader> imageReaders = ImageIO.getImageReaders(imageInputStream);
                ImageReader reader = null;
                while (imageReaders.hasNext()) {
                    reader = (ImageReader) imageReaders.next();
                }
                imgaeBase64 = ConvertImage.encodeToString(bufferedImage, reader.getFormatName());
            }
        }
        return imgaeBase64;
    }

    @RequestMapping("/home")
    private String showHome(ModelMap model) {
        model.addAttribute("cityList", mapService.getAllCities());
        return "home";
    }

    /**
     * Show terms and condition page.
     * 
     * @return
     */
    @RequestMapping("/termsAndconditon")
    private String showTermsAndCondition() {
        return "termsAndConditon";
    }

    /**
     * customize map response list
     * 
     * @param mapDetailsList
     * @return
     * @throws IOException
     */
    private List<MapResponse> getMapResponse(List<Offer> mapDetailsList) throws IOException {
        List<MapResponse> finalMapResponses = new ArrayList<MapResponse>();
        List<MapResponse> mapResponses = new ArrayList<MapResponse>();
        for (Offer offers : mapDetailsList) {
            {
                MapResponse mapResponse = new MapResponse();
                mapResponse.setDescription(offers.getLogin().getAddress().getAddressFirst() + IConstant.OFFER_SPLIT
                                + offers.getLogin().getOpeningTime() + IConstant.OFFER_SPLIT
                                + offers.getLogin().getClosingTime() + IConstant.OFFER_SPLIT + offers.getOfferHeading()
                                + IConstant.OFFER_SPLIT + offers.getLogin().getId() + IConstant.OFFER_SPLIT
                                + offers.getId());
                mapResponse.setTitle(offers.getOfferHeading() + " at " + offers.getLogin().getName());
                if (offers.getLogin().getImage() != null && !offers.getLogin().getImage().isEmpty()) {
                    BufferedImage bufferedImage = null;
                    try {
                        bufferedImage = ImageIO.read(new File(IConstant.FILE_PATH + "/" + offers.getLogin().getImage()));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    String ImageBase64 = null;
                    if (null != bufferedImage) {
                        ImageInputStream imageInputStream = ImageIO.createImageInputStream(new File(IConstant.FILE_PATH + "/"
                                        + offers.getLogin().getImage()));
                        Iterator<ImageReader> imageReaders = ImageIO.getImageReaders(imageInputStream);
                        ImageReader imageReader = null;
                        while (imageReaders.hasNext()) {
                            imageReader = (ImageReader) imageReaders.next();
                        }
                        ImageBase64 = ConvertImage.encodeToString(bufferedImage, imageReader.getFormatName());
                    }
                    mapResponse.setImage(IConstant.BASE64_STRING + ImageBase64);
                } else {
                    mapResponse.setImage(IConstant.DEFAULT_IMAGE_URL);
                }

                mapResponse.setLink("offers");
                mapResponse.setLat(offers.getLogin().getAddress().getLetitude());
                mapResponse.setLng(offers.getLogin().getAddress().getLongitude());
                mapResponses.add(mapResponse);
            }
        }
        for (MapResponse response : mapResponses) {
            List<Offer> offers = mapService.getOfferById(Integer.valueOf(response.getDescription().split(
                            IConstant.OFFER_SPLIT)[4]));
            String offerId = "";
            String offerHeading = "";
            for (Offer offer : offers) {
                offerHeading = offerHeading + IConstant.OFFER_SPLIT + offer.getId();
                offerId = offerId + IConstant.OFFER_SPLIT + offer.getOfferHeading();
            }
            response.setLink(offerId + "||" + offerHeading);
            finalMapResponses.add(response);
        }
        return finalMapResponses;
    }
}