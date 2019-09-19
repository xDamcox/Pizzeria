<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
</head>
<body>
<sec:authorize access="isAnonymous()">
    <%--    <form method="post">--%>
    <%--        <div><label> User Name : <input type="text" name="username"/> </label></div>--%>
    <%--        <div><label> Password: <input type="password" name="password"/> </label></div>--%>
    <%--        <div><input type="submit" value="Sign In"/></div>--%>
    <%--        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
    <%--    </form>--%>
    <style>
        .container {
            width: 40%;
        }

        a, a:link, a:visited, a:hover, a:active {
            text-decoration: none;
            color: white;
        }
    </style>

    <nav class="level">
        <div class="level-left">
            <p class="control">
                <button class="button is-success">
                    <a href="/"> Strona główna</a>
                </button>
            </p>
        </div>
    </nav>

    <div class="container">
        <section class="hero">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title">
                        Logowanie:
                    </h1>
                </div>
            </div>
        </section>
        <form method="post">
            <div class="field">
                <p class="control has-icons-left has-icons-right">
                    <input class="input is-64x64" type="text" name="username" placeholder="Nick">
                    <span class="icon is-small is-left">
      <i class="fas fa-envelope"></i>
    </span>
                    <span class="icon is-small is-right">
      <i class="fas fa-check"></i>
    </span>
                </p>
            </div>
            <div class="field">
                <p class="control has-icons-left">
                    <input class="input" type="password" name="password" placeholder="Hasło">
                    <span class="icon is-small is-left">
      <i class="fas fa-lock"></i>
    </span>
                </p>
            </div>
            <nav class="level">
                <div class="level-item has-text-centered">
                    <p class="control">
                        <button type="submit" class="button is-success">
                            Login
                        </button>
                    </p>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </div>
                <div class="level-item has-text-centered">
                    <p class="control">
                        <button class="button is-success">
                            <a href="/register"> Nie mam konta</a>
                        </button>
                    </p>
                </div>
            </nav>
        </form>
    </div>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
    <form action="<c:url value="/logout"/>" method="post">
        <input type="submit" value="Wyloguj">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</sec:authorize>

</body>
</html>
