<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
</head>
<body>

<style>
    body {
        background-image: url("http://junior.rockyspizzeria.mx/wp-content/uploads/2017/08/Ollies-Pizza-Background-3.png");
        background-repeat: no-repeat;
        background-size: 100%;
        overflow: hidden;
    }
    .container {
        width: 60%;
    }
    a, a:link, a:visited, a:hover, a:active {
        text-decoration: none;
        color: white;
    }
    .edit{
        color: white;
    }
</style>

<div class="container">
    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title edit">
                    Edytuj swoją sugestię:
                </h1>
            </div>
        </div>
    </section>

    <form:form method="post" modelAttribute="editSugestion">
    <div class="field">
        <div class="control has-icons-left">
            <form:textarea cssClass="textarea" path="text" value="${editSugestion.text}" required="true"/>
        </div>
    </div>
    <div class="field is-grouped">
        <div class="control">
            <button type="submit" class="button is-success">Wyślij</button>
        </div>
        <div class="field is-grouped">
            <div class="control">
                <button type="button" class="button is-link">
                    <a href="/sugestion/list">Anuluj</a>
                </button>
            </div>
        </div>
    </div>
    </form:form>

</body>
</html>
