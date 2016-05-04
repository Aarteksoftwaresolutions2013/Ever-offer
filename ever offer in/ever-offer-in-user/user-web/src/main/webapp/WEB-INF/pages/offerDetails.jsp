<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="resources/js/bootstrap.js"></script>
<link href="resources/css/timepicker.css" rel="stylesheet" type="text/css" media="all" />
<script src="resources/js/timepicker.js"></script>
</head>
<body>
    <!--contact-->
    <div class="login-right">
        <div class="container">
            <h3>Offers Details</h3>
            <div class="signup-top">

                <div class="offerdetails">
                    <div class="media">
                        <div class="media-left media-middle">
                            <div class="shopimage">
                                <a href="javascript:void(0)"> <img src="data:image/jpeg;base64,${offer.login.image}"
                                    onerror="this.src='resources/images/Logo.png'" width="118" height="88" alt="image">
                                </a>
                            </div>

                        </div>
                        <div class="media-body">
                            <h4 class="media-heading shopname">${offer.login.name}</h4>
                            ${offer.login.address.addressFirst}
                        </div>
                    </div>
                    <div class="aboutoffer">
                        <div class="media">
                            <div class="media-left media-middle">
                                <a href="javascript:void(0)"> <img src="data:image/jpeg;base64,${offer.image}"
                                    width="118" height="88">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"></h4>
                                ${offer.offerHeading}
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid offerdetail grid2">
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">Normal Price</div>
                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail">${offer.normalPrice}</div>
                        <div class="clearfix"></div>

                        <div class="container-fluid offerdetail grid2">
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">Offer Price</div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail">${offer.offerPrice}</div>
                            <div class="clearfix"></div>

                            <div class="container-fluid offerdetail grid2">
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">No. of coupons/person</div>
                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail">${offer.noOfCouponsPerPerson}</div>
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">Offer coupan code</div>
                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail">${offer.offerCoupanCode}</div>
                                <div class="clearfix"></div>
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">Shop's url</div>
                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail">
                                    <a href="#">${offer.login.address.contactUrl}</a>
                                </div>
                                <div class="clearfix"></div>
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">Offers Valid Hours</div>
                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail">${offer.offerStartTime}-
                                    ${offer.offerEndTime}</div>
                                <div class="clearfix"></div>
                            </div>

                            <div class="container-fluid decription grid2">
                                <div class="col-lg-12 decriptionheading">Offers Description/Shop Description</div>
                                <div class="col-lg-12 detail">${offer.offerDescription}</div>
                                <div class="col-lg-12 decriptionheading grid2">Offers Terms / Condition</div>
                                <div class="col-lg-12 detail">${offer.termsAndConditions}</div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--//contact-->
</body>
</html>