<%-- 
    Document   : user-form
    Created on : Aug 8, 2025, 2:22:30 PM
    Author     : shah
--%>

<%-- 
    Document   : user-form
    Created on : Sep 15, 2024, 5:02:13 PM
    Author     : Java Programming with Aldrin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Form</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body>
    <h1>${user == null ? "Add New Student" : "Edit User"}</h1>
    <form action="${user == null ? 'insert' : 'update'}" method="post">
        <input type="hidden" name="id" value="${user != null ? user.id : ''}" />

        <label>Student Name : </label>
        <input type="text" name="name" value="${user != null ? user.name : ''}" required /><br/>

        <label>Student Address : </label>
        <input type="text" name="email" value="${user != null ? user.email : ''}" required /><br/>

        <label>Student Class : </label>
        <select name="country" required>
            <option value="">Select Class</option>
            <c:forEach var="i" begin="1" end="12">
                <option value="${i}" <c:if test="${user != null && user.country == i}">selected</c:if>>${i}</option>
            </c:forEach>
        </select><br/>

        <input type="submit" value="${user == null ? 'Save' : 'Update'}" />
    </form>

    <a href="list">Back to Student List</a>
</body>


</html>  
