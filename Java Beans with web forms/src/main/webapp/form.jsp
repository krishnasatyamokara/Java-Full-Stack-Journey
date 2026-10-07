<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get Property</title>
</head>
<body>
Submit form <br/>
<jsp:useBean id="user" class = "practice_JSP.User" scope = "session"></jsp:useBean>
<form action="formValue.jsp">
	FirstName: <input type = "text" name = "firstName" value='<jsp:getProperty property="firstName" name="user"/>'>
	LastName: <input type = "text" name = "lastName" value='<jsp:getProperty property="lastName" name="user"/>'>
	<input type = "submit" value="submit">
</form>
</body>
</html>