<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>


<p>
  fdsqfqs
  ${allActors}
</p>







<div class="container" class="">
  <h1>Films</h1>
  <table class=" table table-condensed table-hover table-striped ">



    <tr> 
      <th>ID</th>
      <th>Actor</th>
    </tr>
    <c:forEach items="${allActors}" var="a">
      <tr><td>${a.id}</td>
        <td>${a.firstName}</td>
      </tr>
    </c:forEach>
  </table>






  <a href="form" class=" col-md-12 btn btn-block btn-primary">actor toevoegen</a>
</div>

</body>
</html>
