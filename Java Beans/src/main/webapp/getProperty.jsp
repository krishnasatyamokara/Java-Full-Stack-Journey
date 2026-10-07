<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get property</title>
</head>
<body>
<jsp:useBean id="student" class ="practice_JSP.Student" scope = "application"></jsp:useBean>

FirstName : <jsp:getProperty property="firstName" name="student"/> <br/>
LastName : <jsp:getProperty property="lastName" name="student"/>
</body>
</html>