<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/validationEngine.jquery.css" type="text/css" />
<script src="resources/js/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
<script src="resources/js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="resources/js/jsp-js/verifyUserName.js"></script>
<script type="text/javascript" src="resources/js/commonForFormValidation.js"></script>
<!--//time-style-->
<link href="resources/css/timepicker.css" rel="stylesheet" type="text/css" media="all" />
<script src="resources/js/timepicker.js"></script>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/fontawesome/4.3.0/css/font-awesome.min.css">
<!--//time-style-->
<script src="resources/js/jsp-js/registration.js"></script>
<title>User Registration</title>
<style type="text/css">
</style>
</head>
<body>
    <!--contact-->
    <div class="login-right">
        <div class="container">
            <h3>Register</h3>
            <div class="signup-top">
                <div class="form-info">
                    <form:form method="POST" action="save" modelAttribute="Login" id="formID" autocomplete="off"
                        name="formID" onsubmit="return checkComp()" enctype="multipart/form-data">
                        <form:hidden path="role.id" value="2" />
                        <div class="col-lg-6">
                            <label>User Name</label>
                            <form:input path="userName" class="validate[required] input-text" maxlength="30"
                                placeholder="User Name" onblur="userNameVarification(this);" />
                        </div>
                        <div class="col-lg-6">
                            <label>Password</label>
                            <form:password path="password" class="validate[required,minSize[5],maxSize[12]] input-text"
                                maxlength="16" placeholder="Password" />
                            <form:hidden path="complemenrtCheck" id="comp" />
                        </div>
                        <div class="col-lg-6">
                            <label>Merchant Name</label>
                            <form:input path="name" class="validate[required] input-text" maxlength="30"
                                placeholder="Merchant Name" />
                        </div>
                        <div class="col-lg-6">
                            <label>Merchant Type</label>
                            <form:select path="merchantType" id="merchant"
                                class="validate[funcCall[ifMerchantTypeNotSelected]]">
                                <form:option value="0" label="Select Type" />
                                <form:option value="1" label="Small" />
                                <form:option value="2" label="Large" />
                            </form:select>
                        </div>
                        <div class="col-lg-6">
                            <label>Opening Time</label>
                            <form:input path="openingTime" id="timepicker" name="timepicker"
                                class="validate[required] timepicker " placeholder="Opening Time" />
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
                            <label>Closing Time</label>
                            <form:input path="closingTime" id="timepicker1" name="timepicker"
                                class="validate[required] timepicker" placeholder="Closing Time" />
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
                        <div class="col-lg-12">
                            <label>First Address</label>
                            <form:textarea path="address.addressFirst" class="validate[required] input-text"
                                maxlength="250" rows="3" placeholder="First Address" />
                        </div>
                        <div class="col-lg-12">
                            <label>Second Address</label>
                            <form:textarea path="address.addressSecond" maxlength="250" rows="3"
                                placeholder="Second Address" />
                        </div>
                        <div class="col-lg-12">
                            <label>Third Address</label>
                            <form:textarea path="address.addressThird" maxlength="250" rows="3"
                                placeholder="Third Address" />
                        </div>
                        <div class="col-lg-6">
                            <label>State</label>
                            <form:select path="address.state.id" onchange="getCityList(this)" id="state"
                                class="validate[funcCall[ifStateNotSelected]],dropdown" tabindex="9"
                                data-settings="{&quot;wrapperClass&quot;:&quot;flat&quot;}">
                                <form:option value="0">Select State</form:option>
                                <c:forEach items="${stateList}" var="state">
                                    <form:option value="${state.id}">${state.stateName}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                        <div class="col-lg-6">
                            <label>City</label>
                            <form:select path="address.city.id" id="city"
                                class="validate[funcCall[ifCityNotSelected]],dropdown" tabindex="9"
                                data-settings="{&quot;wrapperClass&quot;:&quot;flat&quot;}">
                                <form:option value="0">Select City </form:option>
                            </form:select>
                        </div>
                        <div class="col-lg-6">
                            <label>Contact Number</label>
                            <form:input path="address.contactNo"
                                class="validate[required,custom[phone],minSize[10],maxSize[10]] input-text"
                                maxlength="10" placeholder="Contact Number" />
                        </div>
                        <div class="col-lg-6">
                            <label>Contact Email</label>
                            <form:input path="address.contactEmail"
                                class="validate[custom[email],maxSize[50]] input-text" maxlength="60"
                                placeholder="Contact Email" />
                        </div>
                        <div class="col-lg-6">
                            <label>Pin Code</label>
                            <form:input path="address.pinCode" class="validate[required,custom[integer]] " maxlength="6"
                                placeholder="Pin Code" />
                        </div>
                        <div class="col-lg-6">
                            <label>Contact Url</label>
                            <form:input path="address.contactUrl" maxlength="50" placeholder="https://www.example.co" />
                        </div>
                        <div class="col-lg-12">
                            <label>Product/Services</label> <select
                                class="validate[funcCall[ifProductService]],dropdown" tabindex="9"
                                data-settings="{&quot;wrapperClass&quot;:&quot;flat&quot;}" id="category">
                                <option value="0">Product/Services</option>
                                <option value="1">Product</option>
                                <option value="2">Services</option>
                            </select>
                        </div>
                        <div class="col-lg-12">
                            <label>Field Officer Reference</label>
                            <p class="refMsg">* If you are filling this form with the help of EverOffer Field
                                Officer, then please select name otherwise ignore</p>
                            <form:select path="employee.id" class="dropdown" tabindex="9"
                                data-settings="{&quot;wrapperClass&quot;:&quot;flat&quot;}" id="category">
                                <form:option value="0" label="Select Feild Offic Reference" />
                                <c:forEach items="${employeeList}" var="employeeList">
                                    <form:option value="${employeeList.id}" label="${employeeList.name}" />
                                </c:forEach>
                            </form:select>
                        </div>
                        <div class="col-lg-12">
                            <label>Registration Type</label> <label class="Form-label--tick"> <form:radiobutton
                                    path="registrationType" value="1" name="SomeRadio" id="SomeRadio"
                                    onchange="showFields()" class="Form-label-radio" /> <span class="Form-label-text">Complementry</span>
                            </label> <label class="Form-label--tick"> <form:radiobutton path="registrationType"
                                    value="2" name="SomeRadio" class="Form-label-radio" id="SomeRadio1"
                                    onchange="showFields()" /> <span class="Form-label-text">Subscription Plan</span>
                            </label>

                        </div>
                        <div style="clear: both;"></div>
                        <div class="col-lg-6a" id="checkbox" style="display: none; margin-left: 15px;">
                            <label>Subscription Plan</label> <label class="Form-label--tick"> <form:radiobutton
                                    path="subscriptionPlan" name="SomeRadio" value="1" class="Form-label-radio" /> <span
                                class="Form-label-text">30 Days</span>
                            </label> <label class="Form-label--tick"> <form:radiobutton path="subscriptionPlan"
                                    name="SomeRadio" value="2" class="Form-label-radio" /> <span
                                class="Form-label-text">3 Months</span>
                            </label> <label class="Form-label--tick"> <form:radiobutton path="subscriptionPlan"
                                    name="SomeRadio" value="3" class="Form-label-radio" /> <span
                                class="Form-label-text">6 Months</span>
                            </label> <label class="Form-label--tick"> <form:radiobutton path="subscriptionPlan"
                                    name="SomeRadio" value="4" class="Form-label-radio" /> <span
                                class="Form-label-text">1 Year</span>
                            </label>
                        </div>
                        <div style="clear: both;"></div>
                        <div class="col-lg-12" id="complementry" style="display: none;">
                            <label>Complementry Code</label>
                            <form:input path="complementry" class="validate[required]" placeholder="Complementry"
                                maxlength="10" onblur="checkComplementryCode(this);" />
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
                        <div class="col-lg-12 checkValidate">
                            <label class="Form-label--tick"> <input type="checkbox" value="Yes"
                                name="termCondition" class="Form-label-checkbox validate[required] checkbox"> <span
                                class="Form-label-text">Yes, I understand and agree to the EverOffer <a
                                    href="termsAndconditon.html" target="_blank">Terms and Conditions</a>
                            </span>
                            </label>
                        </div>
                        <div style="clear: both;"></div>
                        <div class="col-lg-6">
                            <label class="hvr-sweep-to-right"> <input type="submit" value="Sign Up">
                            </label>
                        </div>
                    </form:form>
                    <p>
                        Already have a Ever Offer account? <a href="login">Login</a>
                    </p>
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