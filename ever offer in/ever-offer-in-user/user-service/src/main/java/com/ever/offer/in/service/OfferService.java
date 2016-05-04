package com.ever.offer.in.service;

import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ever.offer.in.model.Offer;

public interface OfferService {

	Offer saveOffer(Offer offer, CommonsMultipartFile[] upload);

	List<Offer> getMerchantAllOffer(Integer loginId);

	List<Offer> showOfferDetailsById(Integer offerId);

    Long getOfferCount(Integer loginId);

	void changeStatusOfOffer(Offer offerResult);

	Long getZeroOfferCount(Integer id);

}
