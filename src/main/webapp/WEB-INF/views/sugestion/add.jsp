<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="sugestion">
    <p>
        Twoja propozycja: <form:textarea path="text"/><form:errors path="text"/>
    </p>
    <input type="submit">
</form:form>

</body>
</html>
