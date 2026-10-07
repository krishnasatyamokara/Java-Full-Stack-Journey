<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get property</title>
</head>
<body>
<jsp:useBean id="student" class ="practice_JSP.Student" scope = "page"></jsp:useBean>


Get property page<br/>
FirstName : <jsp:getProperty property="firstName" name="student"/> <br/>
LastName : <jsp:getProperty property="lastName" name="student"/>
</body>
</html>