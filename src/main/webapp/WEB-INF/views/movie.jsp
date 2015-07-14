<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 14/07/15
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>


    <div class="container col-md-12">
        <div class="col-md-2"></div>
        <div class="headerTitel col-md-10">
            <h1>${film.title} </h1>
            <div class="movieInfo">
            <h3>${film.genre}</h3>
            <p>${film.summary}</p>
            </div>
            <iframe width="560" height="315" src="${film.trailer}" frameborder="0" allowfullscreen></iframe>
        </div>






    </div>




</body>
</html>
