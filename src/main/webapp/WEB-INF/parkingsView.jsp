<%@ page import="du.spring_test.model.ParkingAreaSide" %>
<%@ page import="du.spring_test.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="du.spring_test.model.ParkingArea" %>
<%@ page import="du.spring_test.model.ParkingPlace" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Леха
  Date: 04.01.2021
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ParkingsView</title>
</head>
<body>
         <h3>Название Вашей парковки</h3>
         <h4>${parking.name} </h4>
         <h4> </h4>
         <h4>${parking.parkingAreas.get(0)} </h4>
         <h4>${parking.parkingAreas.toArray()} </h4>
         <table border='1px'>
             <tr>
                 <th>Side</th>
                 <th>Places</th>
             </tr>
             <c:forEach var="area" items="${parking.parkingAreas}">
                 <tr>
                     <td><c:out value="${area.side}" /></td>
                     <td><c:out value="${area.places.stream()}" /></td>
                 </tr>
             </c:forEach>
         </table>



         <table border='1px'>
             <tr>
                 <th>Side</th>
                 <th>Places</th>
             </tr>
             <c:forEach var="side" items="${parking.parkingAreas}">

                 <tr>
                     <td><c:out value="${}" /></td>
                     <td><c:out value="${side}" /></td>
                 </tr>

             </c:forEach>
         </table>




</body>
</html>
