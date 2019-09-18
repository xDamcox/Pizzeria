<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 18.09.2019
  Time: 08:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="post" modelAttribute="pizza">
    <p>
        Nazwa: <form:input path="name" required="true"/><form:errors path="name"/>
    </p>
    <p>
        Składniki: <form:textarea path="components" required="true"/><form:errors path="components"/>
    </p>
    <p>
        <input type="submit">
    </p>
</form:form>

</body>
</html>
