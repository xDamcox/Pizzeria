<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 18.09.2019
  Time: 09:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>Nazwa</th>
        <th>Składniki</th>
    </tr>
<c:forEach items="${list}" var="list" >
    <tr>
        <td>${list.name}</td>
        <td>${list.components}</td>
    </tr>
</c:forEach>
    <sec:authorize access="hasAnyAuthority('ROLE_ADMIN')">
    <a href="/pizza/add">Dodaj nową pizzę</a>
    </sec:authorize>
</table>
</body>
</html>
