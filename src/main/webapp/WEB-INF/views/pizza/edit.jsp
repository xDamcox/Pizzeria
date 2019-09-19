<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="post" modelAttribute="editPizza">
    <p>
        Autor: <form:input path="author" value="${editPizza.author}" required="true"/><form:errors path="author"/>
    </p>
    <p>
        Nazwa: <form:input path="name" value="${editPizza.name}" required="true"/><form:errors path="name"/>
    </p>
    <p>
        Składniki: <form:textarea path="components" value="${editPizza.components}" required="true"/><form:errors path="components"/>
    </p>
    <p>
        Cena: <form:input path="price" required="true"/><form:errors path="price"/>
    </p>
    <input type="submit">
</form:form>
<%@include file="../menu.jsp"%>

</body>
</html>
