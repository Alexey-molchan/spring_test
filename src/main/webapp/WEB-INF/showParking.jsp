<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <input type="submit" >
    </p>
</form>

</body>
</html>
