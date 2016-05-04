package com.ever.offer.in.ws;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ever.offer.in.model.OfferStatus;
import com.ever.offer.in.service.StatusService;
import com.ever.offer.in.util.IConstant;

/**
 * 
 * @author Praveen
 *
 */
@Controller
public class StatusController {

    @Autowired
    private StatusService statusService;

    /**
     * Check offer status
     * 
     * @param offerStatus
     * @param response
     * @return
     */
    @RequestMapping(value = "/checkOfferStatus", method = RequestMethod.POST)
    public @ResponseBody Map<Object, Object> confirmation(@RequestBody OfferStatus offerStatus,
                    HttpServletResponse response) {
        Map<Object, Object> offerStatusMap = new HashMap<Object, Object>();
        boolean status = statusService.checkStatus(offerStatus);
        if (status) {
            offerStatusMap.put(IConstant.RESPONSE, IConstant.RESPONSE_SUCCESS_MESSAGE);
            offerStatusMap.put(IConstant.MESSAGE, IConstant.OFFER_SUCCESS);
        } else {
            offerStatusMap.put(IConstant.RESPONSE, IConstant.RESPONSE_NO_DATA_MESSAGE);
            offerStatusMap.put(IConstant.MESSAGE, IConstant.OFFER_FAILURE);
        }
        return offerStatusMap;
    }
}
