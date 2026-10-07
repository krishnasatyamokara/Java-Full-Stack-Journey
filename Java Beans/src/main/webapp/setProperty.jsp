<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Property</title>
</head>
<body>
<jsp:useBean id="student" class ="practice_JSP.Student" scope = "application"></jsp:useBean>

<jsp:setProperty property="firstName" name="student" value = "sriya"/> <br/>
<jsp:setProperty property="lastName" name="student" value = "pichi"/>
Values updated successfully
</body>
</html>