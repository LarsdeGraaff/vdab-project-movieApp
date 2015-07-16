<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
        body {
            background-color: cadetblue
        }

        .navbar-inverse {
            border-radius: 0;
        }

        .container {
            background-color: white;
            border-radius: 15px;
            padding-bottom: 10px
        }
        .form-group{padding-bottom: 15px;
        padding-top: 15px}
        .form-group input{width: inherit}
    </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand active" href="/">LMDB</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="/actor/actorList" class="glyphicon glyphicon-th-list"> ACTORLIST</a></li>
                <li><a href="/movie/movieList" class=" glyphicon glyphicon-film"> MOVIELIST</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container">


        <h1>Actor</h1>
        <sf:form action="create" commandName="person" method="post">
            <sf:hidden path="id"/>
            <div class="form-group">
                <form:label path="firstName" class="col-sm-2 control-label">First Name</form:label>
                <div class="col-sm-10">
                    <sf:input path="firstName" id="firstName"/></div>
            </div>
            <div class="form-group">
                <form:label path="lastName" class="col-sm-2 control-label">Last Name</form:label>
                <div class="col-sm-10">
                <sf:input path="lastName" id="lastName"/></div>
            </div>
            <div class="form-group">
                <form:label path="country" class="col-sm-2 control-label">Country</form:label>
                <div class="col-sm-10">
                <sf:input path="country" id="country"/></div>
            </div>
            <div class="form-group">
                <form:label path="birthday" class="col-sm-2 control-label">Birthday</form:label>
                <div class="col-sm-10">

                <sf:input path="birthday" id="birthday"/></div>
                <div><sf:errors path="birthday" cssStyle="color: red"/></div>
            </div>

            <div class="form-group">
                <form:label path="gender" class="col-sm-2 control-label">Gender</form:label>
                <div class="col-sm-10">
                <form:select path="gender">
                    <form:option value="NONE" label="--- Select ---"/>
                    <form:options items="${a.gender}"/>
                </form:select></div>
            </div>
        </sf:form>
        <div class="form-group">

            <div class="col-sm-12">
            <button type="submit" class="btn btn-success">submit</button></div>
        </div>

</div>


</body>
</html>
