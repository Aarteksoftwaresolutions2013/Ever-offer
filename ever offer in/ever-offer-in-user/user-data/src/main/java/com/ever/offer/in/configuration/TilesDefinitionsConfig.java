package com.ever.offer.in.configuration;

import java.util.HashMap;
import java.util.Map;

import org.apache.tiles.Attribute;
import org.apache.tiles.Definition;
import org.apache.tiles.definition.DefinitionsFactory;

import com.ever.offer.in.util.TilesIConstant;

public final class TilesDefinitionsConfig implements DefinitionsFactory {
    private static final Map<String, Definition> tilesDefinitions = new HashMap<String, Definition>();
    private static final Attribute BASE_TEMPLATE = new Attribute(TilesIConstant.DEFAULT_LAYOUT);

    public Definition getDefinition(String name, org.apache.tiles.request.Request tilesContext) {
        return tilesDefinitions.get(name);
    }

    /**
     * @param name
     *            <code>Name of the view</code>
     * 
     * @param title
     *            <code>Page title</code>
     * @param body
     *            <code>Body JSP file path</code>
     * 
     *            <code>Adds default layout definitions</code>
     */
    private static void addDefaultLayoutDef(String name, String body, String header, String footer) {
        Map<String, Attribute> attributes = new HashMap<String, Attribute>();

        attributes.put("title", new Attribute(TilesIConstant.TITLE));
        attributes.put("header", new Attribute(header));
        attributes.put("body", new Attribute(body));
        attributes.put("footer", new Attribute(footer));
        tilesDefinitions.put(name, new Definition(name, BASE_TEMPLATE, attributes));
    }

    public static void addDefinitions() {

        /**
         * User tiles configuration
         */
        addDefaultLayoutDef("map", TilesIConstant.MAP_PAGE, TilesIConstant.HEADER, TilesIConstant.FOOTER);
        addDefaultLayoutDef("home", TilesIConstant.HOME_PAGE, TilesIConstant.HEADER, TilesIConstant.FOOTER);
        addDefaultLayoutDef("viewOffer", TilesIConstant.OFFERDETAILS_PAGE, TilesIConstant.HEADER, TilesIConstant.FOOTER);
        addDefaultLayoutDef("termsAndConditon", TilesIConstant.TERM_CONDITION_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);

        addDefaultLayoutDef("contact", TilesIConstant.CONTACT_PAGE, TilesIConstant.HEADER, TilesIConstant.FOOTER);
        addDefaultLayoutDef("promoteBusiness", TilesIConstant.PROMOTE_BUSINESS_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);
        addDefaultLayoutDef("whatisEveroffer", TilesIConstant.WHATIS_EVEROFFER_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);

        addDefaultLayoutDef("whatWeOffer", TilesIConstant.WHATWE_EVEROFFER_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);
        addDefaultLayoutDef("aboutUs", TilesIConstant.ABOUTUS_PAGE, TilesIConstant.HEADER, TilesIConstant.FOOTER);
        addDefaultLayoutDef("careers", TilesIConstant.CAREER_PAGE, TilesIConstant.HEADER, TilesIConstant.FOOTER);
        addDefaultLayoutDef("cancellationAndRefund", TilesIConstant.USER_CANCELLAATION_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);

        addDefaultLayoutDef("commerceAndIncorp", TilesIConstant.COMMERCE_AND_INCORP_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);
        addDefaultLayoutDef("privacyPolicy", TilesIConstant.PRIVACY_POLICY_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);
        addDefaultLayoutDef("productsAndServices", TilesIConstant.PRODUCT_SERVICE_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);
        addDefaultLayoutDef("returnPolicy", TilesIConstant.USER_RETURN_POLICY_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);

        addDefaultLayoutDef("shipAndDeliveryPolicy", TilesIConstant.SHIP_DELIVERY_POLICY_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);
        addDefaultLayoutDef("promotionalEvents", TilesIConstant.PROMOTIONAL_PAGE, TilesIConstant.HEADER,
                        TilesIConstant.FOOTER);

        addDefaultLayoutDef("payment", TilesIConstant.PAYMENT_PAGE, TilesIConstant.HEADER, TilesIConstant.FOOTER);
        addDefaultLayoutDef("payumoney", TilesIConstant.PAYUMONEY_PAGE, TilesIConstant.HEADER, TilesIConstant.FOOTER);

        /**
         * Merchant tiles configuration
         */
        addDefaultLayoutDef("merchantRegistration", TilesIConstant.MERCHANT_REGISTRATION,
                        TilesIConstant.MERCHANT_HEADER, TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("login", TilesIConstant.MERCHANT_LOGIN, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("welcome", TilesIConstant.MERCHANT_WELCOME, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("addOffer", TilesIConstant.MERCHANT_ADDOFFER, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("terms", TilesIConstant.MERCHANT_TERM_CONDITION, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("offerDetails", TilesIConstant.MERCHANT_OFFERDEATILS, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);

        addDefaultLayoutDef("cancellation", TilesIConstant.MERCHANT_CANCELLATION_REFUND,
                        TilesIConstant.MERCHANT_HEADER, TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("commerce", TilesIConstant.MERCHANT_COMMERCE_INCORP, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("privacy", TilesIConstant.MERCHANT_PRIVACY_POLICY, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);

        addDefaultLayoutDef("products", TilesIConstant.MERCHANT_PRODUCT_AND_SERVICE, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("return", TilesIConstant.MERCHANT_RETURNPOLICY, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("ship", TilesIConstant.MERCHANT_SHIPOLICY, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("cityEvents", TilesIConstant.MERCHANT_PROMOTIONAL_EVENTS, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
        addDefaultLayoutDef("success", TilesIConstant.MERCHANT_SUCCESS, TilesIConstant.MERCHANT_HEADER,
                        TilesIConstant.MERCHANT_FOOTER);
    }
}
