<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <style>

    body{background-color: cadetblue}
    .navbar-inverse {border-radius:0;}
    .container{background-color: white;
      border-radius: 15px;
      padding-bottom: 10px}
    .home a{color: black}
    .actorlist{font-size: large}
    .movielist{font-size: large}
  </style>
    <title></title>
</head>
<body>






<nav class="navbar navbar-inverse navbar-static-top" radius="0px">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand active" href="/">LMDB</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li><a href="actor/actorList" > <span class="actorlist glyphicon glyphicon-th-list"> ACTORLIST</span></a></li>
        <li><a href="movie/movieList">  <span class="movielist glyphicon glyphicon-film"> MOVIELIST</span></a></li>
      </ul>
    </div>
  </div>
</nav>





<div class="container ">
  <div class="home">
  <a href="/"> <h1 class="glyphicon glyphicon-home">       LMDB</h1></a>
  </div>

  <div>
  <a href="actor/actorList" class="btn btn-primary glyphicon glyphicon-th-list">    ACTORS</a>
  <a href="movie/movieList" class="btn btn-primary glyphicon glyphicon-film">    MOVIES</a>
  </div>

  <div>
    <img src="http://plzcdn.com/ZillaIMG/f527dd54c56e99cf059ee8d03ce2c6dc_medium.jpg">
  </div>

</div>
</body>
</html>
