<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!--//time-style-->
<link rel="stylesheet" href="http://cdn.jsdelivr.net/fontawesome/4.3.0/css/font-awesome.min.css">
<!--//time-style-->
<script src="resources/js/jsp-js/registration.js"></script>
<title>PayNow</title>
</head>
<body>
    <!--contact-->
    <div class="login-right">
        <div class="container">
            <div class="signup-top">
                <div class="form-info">
                    <form:form method="POST" action="makePayment" modelAttribute="Login" id="formID" autocomplete="off"
                        name="formID" onsubmit="return checkComp()" >
                        <form:hidden path="role.id" value="${id}" />
                        <div style="clear: both;"></div>
                        <div class="col-lg-6a" style="margin-left: 15px;">
                            <label>Select subscription Plan</label>
                            <label class="Form-label--tick"> <form:radiobutton path="subscriptionPlan"
                                    name="SomeRadio" value="1" class="Form-label-radio" /> <span
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
                        <div class="col-lg-6">
                            <label class="hvr-sweep-to-right"> <input type="submit" value="Pay Now">
                            </label>
                        </div>
                    </form:form>
                </div>

            </div>
        </div>
    </div>
    <!--//contact-->
</body>
</html>