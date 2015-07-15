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

        <div class="movieImage col-md-2">
            <img src="${film.image}" class="img-thumbnail" alt="NO IMAGE" width="200" height="400"/>
        </div>
        <div class="movieInfo col-md-10">
            <h6>${film.genre} / ${film.flength}</h6>

            <p>${film.summary}</p>
        </div>

    </div>
    <div class="col-md-2"></div>
    <div class="trailer col-md-10">

        <iframe width="400" height="200" src="${film.trailer}" frameborder="3" allowfullscreen></iframe>
    </div>

</div>


</body>
</html>
