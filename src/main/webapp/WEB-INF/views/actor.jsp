<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
    <style>
        body {
            background-color: cadetblue
        }

        .container {
            background-color: white;
            border-radius: 15px;
            padding-bottom: 10px
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand active" href="/">LMDB</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="/actor/actorList" class="glyphicon glyphicon-th-list"> ACTORLIST</a></li>
                <li><a href="/movie/movieList" class=" glyphicon glyphicon-film"> MOVIELIST</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container ">
    <div class="col-md-2"></div>
    <div class="headerTitel col-md-10">
        <h1>${Actor.firstName} ${Actor.lastName}</h1>
    </div>
    <div class="col-md-2"><h3>Image</h3>
        <img src="${Actor.picture}" class="img-thumbnail" alt="NO IMAGE" width="304" height="236"/> </div>
    <div class="col-md-10"> <h3>Biography ${Actor.firstName} ${Actor.lastName}</h3>
        ${Actor.biography}</div>

</div>

</body>
</html>
