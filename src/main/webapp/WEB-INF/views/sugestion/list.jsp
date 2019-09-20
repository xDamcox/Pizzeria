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
        .include {
            bottom: -90%;
        }
    </style>
    <div class="include">
        <%@include file="../menu.jsp" %>
    </div>
    <link rel="stylesheet" href="https://dl.dropbox.com/s/44515pqjr5yxsay/pizzaTable.css">
    <style>
        .container{
            position: absolute;
            margin: 0 auto;
        }
    </style>

    <div class="container">
        <c:forEach items="${sugestionList}" var="list">
        <div class="row">
            <div class="col-sm-12">
                <h3>User Comment Example</h3>
            </div><!-- /col-sm-12 -->
        </div><!-- /row -->
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
        </body>
</html>
