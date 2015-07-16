<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 14/07/15
  Time: 08:55
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
        .navbar-inverse {border-radius:0;}
        .container{background-color: white;
            border-radius: 15px;
            padding-bottom: 10px}
        .form-group{padding-bottom: 15px;
            padding-top: 15px}
        .form-group input{width: inherit}
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
                <li><a href="actor/actorList" > <span class="actorlist glyphicon glyphicon-th-list"> ACTORLIST</span></a></li>
                <li><a href="movie/movieList">  <span class="movielist glyphicon glyphicon-film"> MOVIELIST</span></a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h1>Movie</h1>

    <sf:form action="create" commandName="film" method="post">
        <sf:hidden path="id"/>
        <div class="form-group">
            <form:label path="title" class="col-sm-2 control-label">Movie Title</form:label>
            <div class="col-sm-10">
            <sf:input path="title" id="title" /></div>
        </div>

        <div class="form-group">
            <form:label path="image" class="col-sm-2 control-label">Image Url</form:label>
            <div class="col-sm-10">
                <sf:input path="image" id="image" /></div>
        </div>


        <div class="form-group">
            <form:label path="genre" class="col-sm-2 control-label">Genre</form:label>
            <div class="col-sm-10">

            <form:select path="genre">
                <form:option value="NONE" label="--- Select ---"/>
                <form:options items="${genre}"/>
            </form:select></div>
        </div>

        <div class="form-group">
            <div class="col-sm-12">
            <button type="submit" class="btn btn-success">submit</button></div>
        </div>
    </sf:form>

</div>

</body>
</html>
