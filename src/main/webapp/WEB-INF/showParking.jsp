<%--
  Created by IntelliJ IDEA.
  User: Леха
  Date: 11.01.2021
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Parking</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/showParking" method="post">
    <p>
        Enter Parking name: <input type="text" name="parkingName">
    </p>
    <p>
        <input type="submit">
    </p>
</form>

</body>
</html>
