<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Mansalva&display=swap" rel="stylesheet">

    <style>
    body{
        background-repeat: no-repeat;
        background-size: 100%;
        background-image: url("https://image.freepik.com/free-photo/top-view-delicious-pizza-with-basil-leaf-wooden-desk_23-2148195090.jpg");
    }
    .title{
        font-size: 700%;
        padding: 10%;
        text-align: right;
        font-family: 'Mansalva', cursive;
    }
    .subtitle{
        font-size: 400%;
        padding-top: -20%;
        text-align: right;
        font-family: 'Mansalva', cursive;
    }
</style>

<%@include file="menu.jsp"%>

    <p class="title">Domowa Pizza</p>
    <p class="subtitle">Zapraszamy</p>
</body>
</html>
