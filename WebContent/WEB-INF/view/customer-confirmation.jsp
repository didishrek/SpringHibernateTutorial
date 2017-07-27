<%--
  Created by IntelliJ IDEA.
  User: 42900
  Date: 09/06/2017
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
The customer is confirmed: ${customer.firstName} ${customer.lastName}
<br/>
Free passes : ${customer.freePasses}
<br/>
Postal code : ${customer.postalCode}
<br/>
Course code : ${customer.courseCode}
</body>
</html>
