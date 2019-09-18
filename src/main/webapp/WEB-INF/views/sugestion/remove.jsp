<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="post" modelAttribute="removeSugestion">
    <input type="submit" name="delete" value="OK"/>
    <input type="submit" name="delete" value="ANULUJ"/>
</form:form>

</body>
</html>
