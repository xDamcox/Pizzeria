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
        background-image: url("https://restaumatic.imgix.net/uploads/accounts/17447/media_library/8c4e1246-d226-4932-97a4-6da9bbb851dd.png?auto=compress&blur=0&crop=focalpoint&fit=max&fp-x=0.5&fp-y=0.5&h=700&rect=0%2C0%2C400%2C401&w=845");
        background-repeat: no-repeat;
        background-position: center;
    }
</style>

<div class="container">
    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">
                    Edytuj pizze "${editPizza.name}":
                </h1>
            </div>
        </div>
    </section>



    <form:form method="post" modelAttribute="editPizza">
    <div class="field">
        <label class="label">Autor</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="author" value="${editPizza.author}" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
        </div>
    </div>
    <div class="field">
        <label class="label">Nazwa pizzy</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="name" value="${editPizza.name}" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
        </div>
    </div>

    <div class="field">
        <label class="label">SKładniki</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="components" value="${editPizza.components}" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
        </div>
    </div>

    <div class="field">
        <label class="label">Cena</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="price" value="${editPizza.price}" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
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
