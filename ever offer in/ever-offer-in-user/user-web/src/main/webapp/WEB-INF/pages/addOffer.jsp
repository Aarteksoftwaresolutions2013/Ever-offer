<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/fontawesome/4.3.0/css/font-awesome.min.css">
<script src="resources/js/bootstrap.js"></script>
<script src="http://code.jquery.com/jquery-2.1.1.js"></script>
<link href="resources/css/timepicker.css" rel="stylesheet" type="text/css" media="all" />
<script src="resources/js/timepicker.js"></script>
<link rel="stylesheet" href="resources/css/validationEngine.jquery.css" type="text/css" />
<script src="resources/js/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
<script src="resources/js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="resources/js/commonForFormValidation.js"></script>
<script src="resources/js/jsp-js/addOffer.js"></script>
<link rel="stylesheet" href="resources/css/message.css" type="text/css" />
</head>
<body>
    <!--contact-->
    <div class="login-right">
        <div class="container">
            <h3>Offers</h3>
            <div class="signup-top">

                <div class="form-info">
                    <h3 class="msg">${message}</h3>
                    <form:form method="POST" action="saveOffer" modelAttribute="offer" id="formID" autocomplete="off"
                        enctype="multipart/form-data" onSubmit="return validate();">
                        <div class="col-lg-12">
                            <label>Offer Heading</label>
                            <form:input path="offerHeading" placeholder="Offer Heading" name="offerHeading"
                                class="validate[required,maxSize[40]] input-text" maxlength="60" />
                        </div>

                        <div class="col-lg-12">
                            <label>Normal Price</label>
                            <form:input path="normalPrice" placeholder="Normal Price" name="normalPrice"
                                class="validate[custom[integer]]" maxlength="10" />
                        </div>

                        <div class="col-lg-12">
                            <label>Offer Price</label>
                            <form:input path="offerPrice" placeholder="Offer Price" name="offerPrice"
                                class="validate[custom[integer]]" maxlength="10" />
                        </div>

                        <div style="clear: both;"></div>
                        <div class="col-lg-12">
                            <label>Offer Description</label>
                            <form:textarea path="offerDescription" name="offerDescription"
                                placeholder="Offer Description" class="validate[required] input-text" maxlength="250" />
                        </div>
                        <div class="col-lg-12">
                            <label class="Form-label--tick"> <form:radiobutton path="rateType" value="1"
                                    name="SomeRadio" class="Form-label-radio" /> <span class="Form-label-text">Discount</span>
                            </label> <label class="Form-label--tick"> <form:radiobutton path="rateType" value="2"
                                    name="SomeRadio" class="Form-label-radio" /> <span class="Form-label-text">Flat</span>
                            </label>

                        </div>
                        <div style="clear: both;"></div>
                        <div class="col-lg-12">
                            <form:input path="rateValue" name="rateValue" class="validate[required,custom[integer]]"
                                placeholder="Discount" maxlength="6" />
                        </div>

                        <div style="clear: both;"></div>
                        <div class="col-lg-6">
                            <label>Offer Start Time</label>
                            <form:input path="offerStartTime" class="timepicker validate[required]"
                                placeholder="Offer Start Time" name="offerStartTime" />
                            <script type="text/javascript">
																													$(
																															'.timepicker')
																															.wickedpicker(
																																	{
																																		twentyFour : false
																																	});
																													$(
																															'.timepicker-two')
																															.wickedpicker(
																																	{
																																		twentyFour : true
																																	});
																												</script>
                        </div>
                        <div class="col-lg-6">
                            <label>Offer End time</label>
                            <form:input path="offerEndTime" name="offerEndTime" class="timepicker validate[required]"
                                placeholder="Offer End time" />
                            <script type="text/javascript">
																													$(
																															'.timepicker')
																															.wickedpicker(
																																	{
																																		twentyFour : false
																																	});
																													$(
																															'.timepicker-two')
																															.wickedpicker(
																																	{
																																		twentyFour : true
																																	});
																												</script>
                        </div>
                        <div style="clear: both;"></div>
                        <div class="col-lg-12">
                            <label>Offer Validity</label> <input type="date" name="offerValidity"
                                placeholder="YYYY-MM-DD" class="validate[required,custom[date],future[NOW]]"
                                maxlength="10">

                        </div>
                        <div style="clear: both;"></div>
                        <div class="col-lg-12">
                            <label>Terms & Conditions</label>
                            <form:textarea path="termsAndConditions" rows="3" placeholder="Terms & Conditions"
                                name="termsAndConditions" class="validate[required] input-text" maxlength="250" />

                        </div>
                        <div style="clear: both;"></div>
                        <div class="col-lg-12">
                            <label>No. of Coupons / Person</label>
                            <form:input path="noOfCouponsPerPerson" placeholder="No. of Coupons / Person"
                                name="noOfCouponsPerPerson" class="validate[required,custom[integer]]" maxlength="1" />
                        </div>
                        <div style="clear: both;"></div>
                        <div class="col-lg-12">
                            <label>Upload Image</label> <span id="file_error"
                                style="color: red; font-size: 15px; font-style: italic; display: none;"></span> <input
                                id="uploadFile" placeholder="Choose File" disabled="disabled" />
                            <div class="fileUpload btn btn-primary">
                                <span>Upload</span><input id="uploadBtn" type="file" name="upload" class="upload"
                                    accept="image/*" />

                            </div>
                        </div>
                        <div style="clear: both;"></div>
                        <div style="clear: both;"></div>
                        <div style="clear: both;"></div>
                        <div class="col-sm-3 col-md-3 col-lg-3">
                            <label class="hvr-sweep-to-right "> <input type="submit" id="btnSubmit" value="Save">
                            </label>
                        </div>
                        <div class="col-sm-3 col-md-3 col-lg-3" style="padding: 0;">

                            <!-- Trigger the modal with a button -->
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"
                                onclick="myFunction()">Preview offer</button>
                        </div>

                        <div style="clear: both;"></div>
                    </form:form>

                </div>



                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Offer Preview</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container">
                                    <div class="modaltop">

                                        <div class="offerdetails">
                                            <div class="aboutoffer">
                                                <div class="media">
                                                    <div class="media-left media-middle">
                                                        <a href="#"> <img id="preview" src="" width="118"
                                                            height="88" alt="image">
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading" id="demo4"></h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="container-fluid offerdetail grid2">
                                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">No. of
                                                    coupons/person</div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail" id="demo1"></div>
                                                <div class="clearfix"></div>
                                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">Shop's url</div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail">
                                                    <a href="#">www.everoffer.com</a>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 detail">Offers
                                                    Valid Hours</div>
                                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 detail" id="demo5"></div>
                                                <div class="clearfix"></div>
                                            </div>

                                            <div class="container-fluid decription grid2">
                                                <div class="col-lg-12 decriptionheading">Offers Description/Shop
                                                    Description</div>
                                                <div class="col-lg-12 detail" id="demo3"></div>
                                                <div class="col-lg-12 decriptionheading grid2">Offers Terms /
                                                    Condition</div>
                                                <div class="col-lg-12 detail" id="demo2"></div>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--//contact-->
</body>
<script>
	document.getElementById("uploadBtn").onchange = function() {
		document.getElementById("uploadFile").value = this.value;
	};
</script>
</html>