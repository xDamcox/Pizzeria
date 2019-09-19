<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
</head>
<body>

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
        <nav class="level">
            <div class="level-left">
                <div class="level-item">
                    <input type="submit" class="button is-info" value="Dodaj"></input>
                </div>
            </div>
        </nav>
    </div>
</article>
</form:form>

</body>
</html>
