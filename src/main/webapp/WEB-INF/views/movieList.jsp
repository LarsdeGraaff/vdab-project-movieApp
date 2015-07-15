<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>

<div class="container">
    <h1>All Movies</h1>
    <table class=" table table-condensed table-hover table-striped ">


        <tr> 
            <th>ID</th>
            <th> </th>
            <th>Title</th>
            <th>genre</th>
            <th>options</th>
        </tr>
        <c:forEach items="${allMovies}" var="a">
            <tr>
                <td>${a.id}</td>
                <td><img src="${a.image}" class="img-thumbnail"  alt="NO IMAGE"width="35" height="70"/></td>

                <td><a href="${a.id}">${a.title}</a></td>


                <td>${a.genre}</td>


                <td><a href="movieForm?id=${a.id}" class="btn  btn-warning">edit</a>
                    <a href="deleteMovie?id=${a.id}" class="btn  btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>


    <a href="movieForm" class=" col-md-12 btn btn-block btn-primary">Movie toevoegen</a>
    <a href="/" class=" col-md-12 btn btn-block btn-info">HOMEPAGE</a>
</div>

</body>
</html>
