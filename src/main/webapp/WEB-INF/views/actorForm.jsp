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
    <h1>Actor</h1>
    <sf:form action="create" commandName="person" method="post">
        <div>
        <form:label path="firstName">First Name</form:label>
        <sf:input path="firstName" id="firstName"/>
        </div>
        <div>
        <form:label path="lastName">Last Name</form:label>
        <sf:input path="lastName" id="lastName"/>
        </div>
        <div>
            <form:label path="country">Country</form:label>
            <sf:input path="country" id="country"/>
        </div>
        <div>
            <form:label path="birthday">Birthday</form:label>
            <sf:errors path="birthday" />
            <sf:input path="birthday" id="birthday"/>
        </div>
        <div>
            <form:label path="gender">Gender</form:label>
            <sf:input path="gender" id="gender"/>
        </div>


        <sf:hidden path="id"/>
        <div>
        <button type="submit" class="btn btn-success">submit</button>
        </div>
    </sf:form>
</div>

</body>
</html>
