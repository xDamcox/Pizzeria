<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .include {
            bottom: -90%;
        }
    </style>
    <div class="include">
        <%@include file="../menu.jsp" %>
    </div>
    <link rel="stylesheet" href="https://dl.dropbox.com/s/44515pqjr5yxsay/pizzaTable.css">
    <style>
        .suggestion{
            background-color: gray;
            color: red;
            bottom: 20%;
        }
    </style>
    <h1>Sugestie</h1>
    <center>
        <c:forEach items="${sugestionList}" var="list">
            <div class="suggestion">
                    Data: ${list.created}
                    ${list.updated}<br/>
                    ${list.user.username}
                    ${list.text}
                <td><a href="/sugestion/edit/${list.id}">Edycja</a></td>
                <td><a href="/sugestion/remove/${list.id}">Usuń</a></td>
            </div>
        </c:forEach>
    </center>
    </body>
</html>
