<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      <th>Title</th>
      <th>length</th>
      <th>summary</th>
      <th>genre</th>
      <th>trailer</th>
      <th>userRating</th>
    </tr>
    <c:forEach items="${allActors}" var="a">
      <tr><td>${a.id}</td>

        <td><a href="${a.id}">${a.firstName}</a></td>
        <td>${a.lastName}</td>
        <td>${a.birthday}</td>
        <td>${a.country}</td>
        <td>${a.gender}</td>

        <td><a href="form" class="btn  btn-warning">edit</a>
          <a href="form" class="btn  btn-danger">Delete</a></td>
      </tr>
    </c:forEach>
  </table>






  <a href="form" class=" col-md-12 btn btn-block btn-primary">actor toevoegen</a>
</div>

</body>
</html>
