<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<title>Easy locator</title>
<link rel="stylesheet" type="text/css" href="resources/css/easyLocator.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="resources/js/easyLocator.js"></script>
<script src="resources/js/markerclusterer.min.js"></script>
<script src="resources/js/jsp-js/home.js"></script>
<script src="resources/js/jsp-js/base64.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="resources/css/home.css">
</head>
<body>
    <nav>
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="searchlocation">
                <form>
                    <div class="col-lg-12">
                        <select class="dropdown custarrow" tabindex="9"
                            data-settings="{&quot;wrapperClass&quot;:&quot;flat&quot;}" id="city"
                            onchange="getAddessByCity()">
                            <option value="0">Select City</option>
                            <c:forEach items="${cityList}" var="city">
                                <option value="${city.id}">${city.cityName}</option>
                            </c:forEach>
                        </select>
                    </div>

                </form>
            </div>

        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class=" header-right">
        <div class=" banner">
            <p></p>
            <div class="container-fluid">
                <div id="locatorList" style="height: 400px"></div>
            </div>
        </div>
    </div>
    <!--content-->
    <div class="content">
        <!--phone-->
        <div class="phone">
            <div class="container">
                <div class="col-md-6">
                    <img src="resources/images/ph1.png" class="img-responsive">
                </div>
                <div class="col-md-6 phone-text">
                    <h4>Search Offers Everywhere</h4>
                    <div class="text-1">
                        <h5>Find a place</h5>
                        <p>Locate the app and press a bid to learn more</p>
                    </div>
                    <div class="text-1">
                        <h5>Get the coupon</h5>
                        <p>Press the "download coupon" button.</p>
                    </div>
                    <div class="text-1">
                        <h5>Show off your coupon</h5>
                        <p>Now just to show the coupon to the cashier before paying and get your Everoffer</p>
                    </div>
                    <div class="grid1">
                        <a href="https://play.google.com/store/apps/details?id=com.everoffer&hl=en" target="_blank"><img
                            src="resources/images/button-get-it-on-google-play.png"></a> <a href="#"><img
                            src="resources/images/app_store_button.png"></a>
                    </div>

                </div>
            </div>
        </div>
        <!--//phone-->
        <!--project--->
        <div class="project">
            <div class="container">

                <h3>Special Offers</h3>
                <br>
                <!-- Jssor Slider Begin -->
                <!-- To move inline styles to css file/block, please specify a class name for each element. -->
                <!-- ================================================== -->
                <div id="slider1_container"
                    style="visibility: hidden; position: relative; margin: 0 auto; width: 1140px; height: 442px; overflow: hidden;">

                    <!-- Loading Screen -->
                    <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                        <div
                            style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; background-color: #000; top: 0px; left: 0px; width: 100%; height: 100%;">
                        </div>
                        <div
                            style="position: absolute; display: block; background: url(images/loading.gif) no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;">
                        </div>
                    </div>

                    <!-- Slides Container -->
                    <div u="slides"
                        style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1140px; height: 442px; overflow: hidden;">
                        <div>
                            <img u="image" src2="resources/images/home/01.jpg" />
                        </div>
                        <div>
                            <img u="image" src2="resources/images/home/02.jpg" />
                        </div>
                        <div>
                            <img u="image" src2="resources/images/home/03.jpg" />
                        </div>
                        <div>
                            <img u="image" src2="resources/images/home/04.jpg" />
                        </div>
                    </div>
                    <!-- bullet navigator container -->
                    <div u="navigator" class="jssorb05" style="bottom: 16px; right: 6px;">
                        <!-- bullet navigator item prototype -->
                        <div u="prototype"></div>
                    </div>
                    <!--#endregion Bullet Navigator Skin End -->

                    <!--#region Arrow Navigator Skin Begin -->
                    <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
                    <!-- Arrow Left -->
                    <span u="arrowleft" class="jssora11l" style="top: 123px; left: 8px;"> </span>
                    <!-- Arrow Right -->
                    <span u="arrowright" class="jssora11r" style="top: 123px; right: 8px;"> </span>
                    <!--#endregion Arrow Navigator Skin End -->
                    <a style="display: none" href="http://www.jssor.com">Bootstrap Slider</a>
                </div>
                <!-- Jssor Slider End -->
            </div>

        </div>
        <!--//project-->
        <!--test-->
        <div class="content-bottom">
            <div class="container">
                <h3>What People Are Saying</h3>
                <div class="col-md-6 name-in">
                    <div class=" bottom-in">
                        <a href="javascript:void(0)" class="men-top"><img class="img-responsive men-top"
                            src="resources/images/Dr._Sanjay_Chakane__Pune__Maharashtra.jpg"></a>
                        <p class="para-in">People are so spontaneous in where they go for the best offers, but
                            EverOffer helps us stay on people's minds.</p>
                        <div class="men-grid">

                            <div class="men">
                                <span>Dr. Sanjay Chakane</span>
                                <p>Pune Maharashtra</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class=" bottom-in">
                        <a href="javascript:void(0)" class="men-top"><img class="img-responsive men-top"
                            src="resources/images/Bhushan_Nikam_Nagpur__Maharashtra.jpg"
                            alt="Bhushan_Nikam_Nagpur__Maharashtra"></a>
                        <p class="para-in">LOVE the offer lists!!! Thanks people and the folks who thought of this
                            and did all the work- you guys rock!!!</p>
                        <div class="men-grid">

                            <div class="men">
                                <span>Bhushan Nikam</span>
                                <p>Nagpur Maharashtra</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 name-in">
                    <div class=" bottom-in">
                        <a href="javascript:void(0)" class="men-top"><img class="img-responsive men-top"
                            src="resources/images/Manoj_Palhade__Bangalore__Karnataka.jpg" ></a>
                        <p class="para-in">All the good reviews that I have read about this product are true. I have
                            never seen such good service as I experienced of other products.</p>
                        <div class="men-grid">

                            <div class="men">
                                <span>Manoj Palhade</span>
                                <p>Bangalore Karnataka</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class=" bottom-in">
                        <a href="javascript:void(0)" class="men-top"><img class="img-responsive men-top"
                            src="resources/images/Mittal_Shekhar_Ahmedabad__Gujrat.jpg" ></a>
                        <p class="para-in">Everything brought to us through EverOffer was impeccable. We were
                            celebrating a birthday, other rocking parties and that were all satisfied.</p>
                        <div class="men-grid">

                            <div class="men">
                                <span>Mittal Shekhar</span>
                                <p>Ahmedabad Gujrat</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--//test-->
</body>
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/docs.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="resources/js/ie10-viewport-bug-workaround.js"></script>

<!-- jssor slider scripts-->
<!-- use jssor.slider.debug.js for debug -->
<script type="text/javascript" src="resources/js/jssor.slider.mini.js"></script>
</html>