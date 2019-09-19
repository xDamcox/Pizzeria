<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
</head>
<body>
<%--<form:form method="post" modelAttribute="user">--%>
<%--    <p>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        Nazwisko: <form:input path="lastName" required="true"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        Email: <form:input path="email" required="true"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        Nick: <form:input path="username" required="true"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        Hasło: <form:input type="password" path="password" required="true"/>--%>
<%--    </p>--%>
<%--    <input type="submit">--%>
<%--</form:form>--%>
<style>
    .container {
        width: 40%;
    }

    a, a:link, a:visited, a:hover, a:active {
        text-decoration: none;
        color: white;
    }
</style>
<sec:authorize access="isAnonymous()">
<p class="control">
    <button class="button is-success">
        <a href="/"> Strona główna</a>
    </button>
</p>

<div class="container">
    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">
                    Rejestracja:
                </h1>
            </div>
        </div>
    </section>
    <form:form method="post" modelAttribute="user">
        <div class="field">
            <label class="label">Imię</label>
            <div class="control has-icons-left">
                <form:input cssClass="input" path="firstName" required="true"/>
                <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
            </div>
        </div>

        <div class="field">
            <label class="label">Nazwisko</label>
            <div class="control has-icons-left">
                <form:input cssClass="input" path="lastName" required="true"/>
                <span class="icon is-small is-left">
      <i class="fas fa-signature"></i>
    </span>
            </div>
        </div>

        <div class="field">
            <label class="label">Email</label>
            <div class="control has-icons-left">
                <form:input cssClass="input" path="email" required="true"/>
                <span class="icon is-small is-left">
                <i class="far fa-envelope"></i>
                </span>
            </div>
        </div>

        <div class="field">
            <label class="label">Nick</label>
            <div class="control has-icons-left">
                <form:input cssClass="input" path="username" required="true"/>
                <span class="icon is-small is-left">
      <i class="fas fa-ticket-alt"></i>
    </span>
            </div>
        </div>

        <div class="field">
            <label class="label">Hasło</label>
            <div class="control has-icons-left">
                <form:input cssClass="input" path="password" required="true"/>
                <span class="icon is-small is-left">
     <i class="fas fa-unlock-alt"></i>
    </span>
            </div>
        </div>

        <div class="field is-grouped">
            <div class="control">
                <button type="submit" class="button is-link">Wyślij</button>
            </div>
            <div class="level-item has-text-centered">
                <p class="control">
                    <button class="button is-success">
                        <a href="/login">Mam już konto</a>
                    </button>
                </p>
            </div>
        </div>
    </form:form>
    </sec:authorize>

    <sec:authorize access="isAuthenticated()">
        <form action="<c:url value="/logout"/>" method="post">
            <input type="submit" value="Wyloguj">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
        </form>
    </sec:authorize>

</div>
</body>
</html>
