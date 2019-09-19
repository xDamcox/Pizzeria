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

    a, a:link, a:visited, a:hover, a:active {
        text-decoration: none;
        color: white;
    }

    body{
        background-image: url("http://www.pizzapunkt.pl/wp-content/uploads/2017/10/pizza-sub.png");
        height: 50%;
        background-repeat: no-repeat;
        background-position: center;
    }
</style>

<div class="container">
    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">
                    Dodaj nową pizze:
                </h1>
            </div>
        </div>
    </section>

    <form:form method="post" modelAttribute="pizza">
    <div class="field">
        <label class="label">Autor</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="author" required="true"/>
            <span class="icon is-small is-left">
                <i class="fas fa-user"></i>
            </span>
        </div>
    </div>

    <div class="field">
        <label class="label">Nazwa pizzy</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="name" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-pizza-slice"></i>
    </span>
        </div>
    </div>

    <div class="field">
        <label class="label">Składniki</label>
        <div class="control has-icons-left">
            <form:textarea cssClass="textarea" path="components" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-align-justify"></i>
    </span>
        </div>
    </div>

    <div class="field">
        <label class="label">Cena</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="price" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-money-bill-wave"></i>
    </span>
        </div>
    </div>
    <div class="field is-grouped">
        <div class="control">
            <button type="submit" class="button is-success">Wyślij</button>
        </div>
        <div class="field is-grouped">
            <div class="control">
                <button type="button"  class="button is-link">
                    <a href="/pizza/list">Anuluj</a>
                </button>
            </div>
        </form:form>
</body>
</html>
