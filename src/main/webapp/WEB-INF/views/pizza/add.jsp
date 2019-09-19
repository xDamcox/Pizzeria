<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 18.09.2019
  Time: 08:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
</head>
<body>

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
        <label class="label">Imię</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="author" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
        </div>
    </div>

    <div class="field">
        <label class="label">Imię</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="name" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
        </div>
    </div>

    <div class="field">
        <label class="label">Imię</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="components" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
        </div>
    </div>

    <div class="field">
        <label class="label">Imię</label>
        <div class="control has-icons-left">
            <form:input cssClass="input" path="price" required="true"/>
            <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
        </div>
    </div>
    </form:form>
</body>
</html>
