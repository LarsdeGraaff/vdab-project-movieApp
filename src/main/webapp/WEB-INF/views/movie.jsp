<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style>
        body{background-color: cadetblue}

        .container{background-color: white;
            border-radius: 15px;
            padding-bottom: 10px}
        .movieImage{padding-top: 10px}
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

<div class="container">
    <div class="col-md-2"></div>
    <div class="headerTitel col-md-10">
        <h1>${film.title} </h1>
    </div>
    <div class="movieImage col-md-2">
        <img src="${film.image}" class="img-thumbnail" alt="NO IMAGE" width="200" height="400"/>
    </div>
    <div class="movieInfo col-md-10">
        <h6>${film.genre} / ${film.flength}</h6>

        <p>${film.summary}</p>
    </div>


    <div class="col-md-2"></div>
    <div class="trailer col-md-10">

        <iframe width="400" height="200" src="${film.trailer}" frameborder="3" allowfullscreen></iframe>
    </div>


    <div>
        <div class="col-md-2"></div>
        <div class="col-md-8">

        <table class=" table table-condensed table-hover table-striped ">


            <tr> 

                <th>Character Name </th>
                <th>Actor First Name </th>
                <th>Actor Last Name </th>
            </tr>
            <c:forEach items="${film.character}" var="a">
            <tr>

                <td>${a.characterName}</td>
                <td>${a.actor.firstName}</td>
                <td>${a.actor.lastName}</td>



            </tr>

            </c:forEach>
       </table>
        </div>
        <div class="col-md-2"></div>





    </div>

















</div>

</body>
</html>
