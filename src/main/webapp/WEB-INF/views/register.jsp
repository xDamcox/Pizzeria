<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="user">
    <p>
        Imie: <form:input path="firstName" required="true"/>
    </p>
    <p>
        Nazwisko: <form:input path="lastName" required="true"/>
    </p>
    <p>
        Email: <form:input path="email" required="true"/>
    </p>
    <p>
      Nick:  <form:input path="username" required="true"/>
    </p>
    <p>
      Hasło:  <form:input type="password" path="password" required="true"/>
    </p>
    <input type="submit">
</form:form>
<a href="/login">Mam już konto</a>

</body>
</html>
