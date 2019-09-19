<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://dl.dropbox.com/s/ercujtaw16poun8/buttonCancelDelete.css">
</head>
<body>
<form:form method="post" modelAttribute="removePizza">
    <center>
    <button input type="submit" name="delete" value="OK">USUŃ</button>
    <button type="submit" name="delete" value="ANULUJ">ANULUJ</button>
    </center>
</form:form>
</body>
</html>
