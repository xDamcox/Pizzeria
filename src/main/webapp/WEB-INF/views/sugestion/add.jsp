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
    .container {
        width: 60%;
    }
    body {
        background-image: url("http://junior.rockyspizzeria.mx/wp-content/uploads/2017/08/Ollies-Pizza-Background-3.png");
        background-repeat: no-repeat;
        background-size: 100%;
        overflow: hidden;
    }

    a, a:link, a:visited, a:hover, a:active {
        text-decoration: none;
        color: white;
    }
    .dodaj{
        color: white;
    }
</style>

<div class="container">

    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title dodaj">
                    Dodaj nową sugestię:
                </h1>
            </div>
        </div>
    </section>

    <form:form method="post" modelAttribute="sugestion">
        <article class="media">
            <figure class="media-left">
                <p class="image is-64x64">
                    <img src="https://bulma.io/images/placeholders/128x128.png">
                </p>
            </figure>
            <div class="media-content">
                <div class="field">
                    <p class="control">
                        <form:textarea path="text" class="textarea" placeholder="Add a suggestion..."/>
                    </p>
                </div>
                <div class="field is-grouped">
                    <div class="control">
                        <button type="submit" class="button is-success">Dodaj</button>
                    </div>
                    <div class="field is-grouped">
                        <div class="control">
                            <button type="button" class="button is-link">
                                <a href="/sugestion/list">Anuluj</a>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </form:form>
</div>
</body>
</html>
