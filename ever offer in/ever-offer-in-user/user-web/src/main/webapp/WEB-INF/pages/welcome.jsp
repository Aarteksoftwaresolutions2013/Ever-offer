<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/fontawesome/4.3.0/css/font-awesome.min.css">
<script src="resources/js/bootstrap.js"></script>
<title>welcome</title>
<script src="resources/js/jsp-js/base64.js" type="text/javascript" charset="utf-8"></script>
<script src="resources/js/jsp-js/welcome.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
    <div class="about">
        <div class="about-middle" style="height: 500px;">
            <h2 align="center">Your offers details</h2>
            </br>
            <div class="container">
                <div>
                    <div class="table-responsive">
                        <c:if test="${not empty offerList}">
                            <table class="table table-striped">
                                <tbody>
                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>Offer Heading</th>
                                        <th>Offer Description</th>
                                        <th>Offer Coupan Code</th>
                                    </tr>
                                </thead>
                                <c:forEach var="view" items="${offerList}" varStatus="status">
                                    <tr>

                                        <td>${status.index+ 1 }</td>
                                        <td><a href="#" onclick="return convertIdIntoBase64(${view['id']});">${view.offerHeading}
                                        </a></td>
                                        <td>${view.offerDescription}</td>
                                        <td>${view.offerCoupanCode}</td>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                        <c:if test="${empty offerList}">
                            <h1 align="center" style="color: red">No Offers Found, Please add offer</h1>
                        </c:if>
                    </div>
                </div>

            </div>
        </div>
    </div>
</html>