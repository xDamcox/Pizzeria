<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://dl.dropbox.com/s/44515pqjr5yxsay/pizzaTable.css">
    <style>
        .include {
            bottom: -90%;
        }

        a, a:link, a:visited, a:hover, a:active {
            text-decoration: none;
        }
        td{
            text-align: center;
        }
        th{
            text-align: center;
        }
    </style>
    <div class="include">
        <%@include file="../menu.jsp" %>
    </div>
<img src="https://restaumatic.imgix.net/uploads/accounts/17447/media_library/8c4e1246-d226-4932-97a4-6da9bbb851dd.png?auto=compress&blur=0&crop=focalpoint&fit=max&fp-x=0.5&fp-y=0.5&h=700&rect=0%2C0%2C400%2C401&w=845">
    <div class="container">
        <center>
        <h1>LISTA NASZYCH PIZZ</h1>
        </center>
        <table>
            <thead>
            <tr>
                <th>Autor</th>
                <th>Nazwa</th>
                <th>Składniki</th>
                <th>Cena</th>
                <th>Edycja</th>
                <th>Usuwanie</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="list">
                <tr>
                    <td>${list.author}</td>
                    <td>${list.name}</td>
                    <td>${list.components}</td>
                    <td>${list.price} zł</td>
                    <td><a href="/pizza/edit/${list.id}">Edycja</a></td>
                    <td><a href="/pizza/remove/${list.id}">Usuń</a></td>
                </tr>
            </c:forEach>
            <sec:authorize access="isAnonymous()">
                <tr>
                    <th>
                            <a href="/login">Zaloguj się aby dodać pizze</a>
                    </th>
                </tr>
            </sec:authorize>
            <sec:authorize access="hasAnyAuthority('ROLE_ADMIN')">
                <tr>
                    <th>
                        <a href="/pizza/add">Dodaj nową pizzę</a>
                    </th>
                </tr>
            </sec:authorize>
            </tbody>
        </table>
    </div>
    </body>
</html>
