<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: shokrukh
  Date: 24.10.2022
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Employee info</h2>
<br><br>

 <form:form action="/saveEmployee" modelAttribute="employee">

        <form:hidden path="id"/>
        NAME<form:input path="name"/>
        <br><br>
        SURNAME<form:input path="surname"/>
        <br><br>
        DEPARTMENT<form:input path="department"/>
        <br><br>
        SALARY<form:input path="salary"/>
        <br><br>
        <input type="submit" value="save"/>

 </form:form>

</body>
</html>
