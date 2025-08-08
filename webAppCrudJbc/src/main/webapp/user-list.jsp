<%-- 
    Document   : user-list
    Created on : Aug 8, 2025, 2:20:52 PM
    Author     : shah
--%>

<%-- 
    Document   : user-list
    Created on : Sep 15, 2024, 5:01:32 PM
    Author     : Java Programming with Aldrin
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
    <h1>Student List</h1>
    <a href="new">Add New Student</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Student Name</th>
            <th>Student Address</th>
            <th>Student Class</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td>
                    <a href="edit?id=${user.id}">Edit</a>
                    <a href="delete?id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
