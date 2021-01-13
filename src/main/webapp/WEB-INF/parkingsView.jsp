<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ParkingsView</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/parkingsView" method="post">
</form>
<h3>Название Вашей парковки</h3>
<h4>${parking.name} </h4>
<table border='1px'>
    <thead>
        <tr>
            <th>Side</th>
            <th>Places</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="area" items="${parking.parkingAreas}">
            <tr>
                <td><c:out value="${area.side}"/></td>
                <td>
                    <c:forEach varStatus="loop" var="place" items="${area.places}">
                        <span>
                            <c:out value="${place.number}"/>
                            <c:if test="${loop.index + 1 != area.places.size()}">,</c:if>
                        </span>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </tbody>


</table>
</body>
</html>
