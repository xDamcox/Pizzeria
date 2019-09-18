<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<sec:authorize access="isAnonymous()">
    <a href="/login">Logowanie</a>
    <a href="/register">Rejestracja</a>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
    <form action="<c:url value="/logout"></c:url>" method="post">
        <input type="submit" value="Wyloguj">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</sec:authorize>
<a href="/pizza/list">Lista naszych pizz</a>
<a href="/sugestion/list">Sugestie </a>
</body>
</html>
