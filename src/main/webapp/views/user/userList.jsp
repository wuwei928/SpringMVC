<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/15 0015
  Time: 上午 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>UserList</h3>
<table border="1" width="70%">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Age</td>
        <td>Address</td>
        <td>Delete</td>
        <td>Update</td>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id }</td>
            <td>${user.name }</td>
            <td>${user.age }</td>
            <td>${user.address }</td>
            <td><a href="<%=path %>/UserController/deleteUser.do?id=${user.id }">Delete</a></td>
            <td><a href="<%=path %>/UserController/updateUserUI.do?id=${user.id }">Update</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
