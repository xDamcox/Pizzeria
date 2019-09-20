<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>Title</title>
    <style>
        .sugestie {
            color: white;
            text-shadow: -1px 0 black, 0 1px black,
            1px 0 black, 0 -1px black;
        }

        body {
            background-repeat: no-repeat;
            background-size: 100%;
            background-image: url("https://image.freepik.com/free-photo/tasty-italian-pizza-with-tomato-sauce-parmesan_1220-4259.jpg");
        }

        .container {
            width: 90%;
        }

        .include {
            bottom: -90%;
        }

        .all {
            width: 90%;
            margin: 0 auto;
        }
    </style>
    <div class="include">
        <%@include file="../menu.jsp" %>
    </div>
    <div class="container">
        <div class="all">
            <section class="hero">
                <div class="hero-body">
                    <div class="container">
                        <h1 class="title sugestie">
                            Sugestie użytkowników:
                        </h1>
                    </div>
                </div>
            </section>
            <c:forEach items="${sugestionList}" var="list">

            <div class="row">
                <div class="col-sm-1">
                    <div class="thumbnail">
                        <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
                    </div><!-- /thumbnail -->
                </div><!-- /col-sm-1 -->

                <div class="col-sm-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>${list.user.username}</strong> <span class="text-muted">commented ${list.created}
                        ${list.updated}
                                <a href="/sugestion/add">Dodaj</a>
</span>
                        </div>
                        <div class="panel-body">
                                ${list.text}
                            <a href="/sugestion/edit/${list.id}">Edycja</a>
                            <a href="/sugestion/remove/${list.id}">Usuń</a>
                        </div><!-- /panel-body -->
                    </div><!-- /panel panel-default -->
                </div><!-- /col-sm-5 -->
                </c:forEach>
            </div><!-- /container -->
        </div>
    </div>
    </body>
</html>
