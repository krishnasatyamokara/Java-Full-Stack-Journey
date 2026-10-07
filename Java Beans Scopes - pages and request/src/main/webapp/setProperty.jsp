<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Property</title>
</head>
<body>
<jsp:useBean id="student" class ="practice_JSP.Student" scope = "request"></jsp:useBean>

<!-- When we give page as scope then it will reflect the current page only when we change the value -->
<!-- When we give request as scope it will reflect current page and the requested pages only -->

<jsp:setProperty property="firstName" name="student" value = "sriya"/> <br/>
<jsp:setProperty property="lastName" name="student" value = "pichi"/>

<%
	request.getRequestDispatcher("getProperty.jsp").forward(request,response);
%>
Values updated successfully<br/>
</body>
</html>