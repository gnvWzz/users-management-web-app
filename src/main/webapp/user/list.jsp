<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 30/12/2022
  Time: 08:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<label>
    <a href="users"><input type="button" value="Back to users list"></a>
    <a href="${pageContext.request.contextPath}/users?action=create"><input type="button" value="Add a new user"></a>
</label>
<div style="text-align: center;">
    <h1>User Management</h1>
    <form method="get">
        <label>
            <input type="text" name="findCountry" placeholder="Find by country">
        </label>
        <input type="hidden" name="action" value="findByCountry">
        <input type="submit" value="Search">
    </form>
</div>
<div align="right">
    <label>
        <a href="${pageContext.request.contextPath}/users?action=sortUsersByNameASC"><input type="button" value="Sort users list by name ascending"></a>
        <a href="${pageContext.request.contextPath}/users?action=sortUsersByNameDES"><input type="button" value="Sort users list by name descending"></a>
    </label>
</div>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="${pageContext.request.contextPath}/users?action=edit&id=${user.id}">Edit</a>
                    <a href="${pageContext.request.contextPath}/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
