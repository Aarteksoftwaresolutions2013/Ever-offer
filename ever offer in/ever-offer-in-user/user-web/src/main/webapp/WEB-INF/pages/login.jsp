<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/fontawesome/4.3.0/css/font-awesome.min.css">
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/commonForFormValidation.js" type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/validationEngine.jquery.css" type="text/css" />
<script src="resources/js/jquery.validationEngine.js" type="text/javascript"></script>
<script src="resources/js/jquery.validationEngine-en.js" type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/message.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>
    <!--contact-->
    <div class="login-right">
        <div class="container">
            <h3>Login</h3>
            <div class="login-top">

                <div class="form-info">
                    <h3 class="msg">${massage}</h3>
                    <form:form action="signIn.html" method="post" modelAttribute="Login" id="formID" autocomplete="off">
                        <label>User Name</label>
                        <form:input path="userName" id="userName" maxlength="30"
                            class="user validate[required] input-text text" placeholder="User Name" />
                        <label>Password</label>
                        <form:password path="password" id="password" maxlength="10"
                            class="user validate[required] input-text" placeholder="Password" />
                        <label class="hvr-sweep-to-right"> <input type="submit" value="Submit">
                        </label>
                    </form:form>
                </div>
                <div class="create">
                    <h4>New To Ever Offer?</h4>
                    <a class="hvr-sweep-to-right" href="registration">Create an Account</a>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <!--//contact-->
</body>
</html>