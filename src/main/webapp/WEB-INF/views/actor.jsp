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
    <div class="col-md-2"></div>
          <div class="headerTitel col-md-10">
          <h1>${Actor.firstName} ${Actor.lastName}</h1>
          </div>
    </div>
    <div class="paginaContent col-md-12">
          <div class="links col-md-2">

          </div>
    <div class="paginaDetail col-md-8">
    <div class="col-md-4">
            <h3>Image</h3>
            <img src="${Actor.picture}" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"/>
    </div>
        <div class="col-md-8">
            <h3>Biography ${Actor.firstName} ${Actor.lastName}</h3>
            ${Actor.biography}
        </div>
      </div>



      <div class="rechts col-md-2">

      </div>

</div>

</body>
</html>
