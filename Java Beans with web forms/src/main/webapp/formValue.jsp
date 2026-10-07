<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get Property</title>
</head>
<body>
Values submited to form<br/>
<jsp:useBean id="user" class = "practice_JSP.User" scope = "session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
FirstName : <jsp:getProperty property="firstName" name="user"/><br/>
LastName : <jsp:getProperty property="lastName" name="user"/>
</body>
</html>