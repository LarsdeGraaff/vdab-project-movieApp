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

<div class="container ">
  <a href="/"> <h1>LMDB</h1></a>


</div>

<div class="container">
  <h1>All Actors</h1>
  <table class=" table table-condensed table-hover table-striped ">

    <tr> 
      <th>ID</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Birthdate</th>
      <th>Country</th>
      <th>Gender</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    <c:forEach items="${allActors}" var="a">
      <tr><td>${a.id}</td>

        <td><a href="${a.id}">${a.firstName}</a></td>
        <td><a href="${a.id}">${a.lastName}</a></td>
        <td>${a.birthday}</td>
        <td>${a.country}</td>
        <td>${a.gender}</td>

        <td><a href="actorForm?id=${a.id}" class="btn  btn-warning  glyphicon glyphicon-pencil"></a></td>
        <td><a href="deleteActor?id=${a.id}" class="btn  btn-danger glyphicon glyphicon-trash"></a></td>
      </tr>
    </c:forEach>
  </table>

  <a href="actorForm" class=" col-md-12 btn btn-block btn-primary glyphicon glyphicon-plus">  ADD ACTOR</a>


</div>

</body>
</html>
