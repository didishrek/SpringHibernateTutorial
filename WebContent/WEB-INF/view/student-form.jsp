<%--
  Created by IntelliJ IDEA.
  User: 42900
  Date: 30/05/2017
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form action="processForm" modelAttribute="student">
        First name: <form:input path="firstName" />
        <br/>
        Last name: <form:input path="lastName" />
        <br/>
        Country:
        <form:select path="country">
            <form:options items="${theCountryOptions}" />
        </form:select>
        <br/>
        Favorite Languages:
        <form:radiobuttons path="favoriteLanguage" items="${theLanguageOptions}" />
        <br/>
        Operating Systems :
        <form:checkboxes path="operatingSystems" items="${theOSoptions}" />
        <br/>
        <input type="submit" value="Submit" />
    </form:form>
</body>
</html>
