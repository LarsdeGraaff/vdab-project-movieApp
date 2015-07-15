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
</head>
<body>


<div class="container">
  <h1>Movie</h1>

  <sf:form action="create" commandName="film" method="post">

    <div>
      <form:label path="title">Movie Title</form:label>
      <sf:input path="title" id="title"/>
    </div>
    <div>
      <form:label path="genre">Genre</form:label>
      <form:select path="genre">
        <form:option value="NONE" label="--- Select ---" />
        <form:options items="${genre}" />
      </form:select>

    </div>


    <sf:hidden path="id"/>
    <div>
      <button type="submit" class="btn btn-success">submit</button>
    </div>
  </sf:form>

</div>

</body>
</html>
