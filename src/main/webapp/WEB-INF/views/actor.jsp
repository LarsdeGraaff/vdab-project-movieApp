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
</head>
<body>





<div class="container col-md-12" >
  <div class="logo col-md-2">
  <h1>LMDB</h1></div>
  <div class="headerTitel col-md-10">
  <h5>Detailpagina van de acteurs</h5>
  </div>
</div>
<div class="paginaContent col-md-12">
  <div class="links col-md-2">

  </div>

  <div class="paginaDetail col-md-8">
    <table class=" table table-condensed table-hover table-striped ">
      <tr>
        <th>ID</th>
        <th>Actor</th>

      </tr>
      <tr><td>${Actor.id}</td>
    <td>${Actor.firstName}</td>
      </tr>
      </table>
  </div>

  <div class="rechts col-md-2">

  </div>

</div>

</body>
</html>
