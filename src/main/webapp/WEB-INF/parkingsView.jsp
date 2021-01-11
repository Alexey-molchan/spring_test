<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ParkingsView</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/parkingsView" method="post">
    <p>
        Enter Parking name: <input type="text" name="parkingName">
    </p>
    <p>
        <input type="submit">
    </p>
</form>
<h3>Название Вашей парковки</h3>
<h4>${parking.name} </h4>
<table border='1px'>
<tr>
    <th>Side</th>
    <th>Places</th>
</tr>
<c:forEach var="area" items="${parking.parkingAreas}">
    <tr>
    <td><c:out value="${area.side}"/></td>
    <c:forEach var="place" items="${area.places}">
        <p>
        <td><c:out value="${place.number}"/></td>
        </p>

    </c:forEach>
</c:forEach>
    </tr>
</table>
</body>
</html>
