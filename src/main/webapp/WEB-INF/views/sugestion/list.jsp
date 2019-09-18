<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${sugestionList}" var="list">
    ${list.user.username}
    ${list.text}
    ${list.created}
    ${list.updated}
    <td><a href="/sugestion/edit/${list.id}">Edycja</a></td>
    <td><a href="/sugestion/remove/${list.id}">Usuń</a></td>
</c:forEach>
</body>
</html>
