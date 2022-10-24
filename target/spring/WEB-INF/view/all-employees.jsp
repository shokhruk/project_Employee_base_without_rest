<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shokrukh
  Date: 14.10.2022
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <title>something</title>
</head>
<body>

<h2>All Employees</h2>
<br><br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach items="${allEmps}" var="employee">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${employee.id}"/>
        </c:url>
        <tr>
            <td>${employee.name}</td>
            <td>${employee.surname}</td>
            <td>${employee.department}</td>
            <td>${employee.salary}</td>
            <td>
                <input type="button" value="Update"
                onclick="window.location.href= '${updateButton}'"/>
            </td>
        </tr>
    </c:forEach>

</table>
<br><br>

<input type="button" value="ADD" onclick="window.location.href = 'addNewEmployee'"/>


</body>
</html>
