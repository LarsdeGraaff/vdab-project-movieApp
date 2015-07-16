<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
    <style>
        body{background-color: cadetblue}
        .navbar-inverse {border-radius:0;}
        .container{background-color: white;
            border-radius: 15px;
            padding-bottom: 10px}
        th{background-color: darkgray;color: white}
        .actorlist{font-size: large}
        .movielist{font-size: large}

    </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-static-top" radius="0px">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand active" href="/">LMDB</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="/actor/actorList" > <span class="actorlist glyphicon glyphicon-th-list"> ACTORLIST</span></a></li>
                <li><a href="/movie/movieList">  <span class="movielist glyphicon glyphicon-film"> MOVIELIST</span></a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h1>All Movies</h1>
    <table class=" table table-condensed table-hover table-striped ">


        <tr> 
            <th>ID</th>
            <th> </th>
            <th>Title</th>
            <th>Genre</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${allMovies}" var="a">
            <tr>
                <td>${a.id}</td>
                <td><img src="${a.image}" class="img-thumbnail"  alt="NO IMAGE"width="35" height="70"/></td>

                <td><a href="${a.id}">${a.title}</a></td>


                <td>${a.genre}</td>


                <td><a href="movieForm?id=${a.id}" class="btn  btn-warning glyphicon glyphicon-pencil"></a></td>
                <td><a href="deleteMovie?id=${a.id}" class="btn  btn-danger glyphicon glyphicon-trash"></a></td>
            </tr>
        </c:forEach>
    </table>


    <a href="movieForm" class=" col-md-12 btn btn-block btn-primary glyphicon glyphicon-plus">  ADD MOVIE </a>

</div>

</body>
</html>
