<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Area</title>
</head>
<body>
<%
	String username = null, sessionId = null;
	if(request.getSession().getAttribute("username") == null){
		response.sendRedirect("Login.jsp");
	}else{
		username = request.getSession().getAttribute("username").toString();
		sessionId = request.getSession().getId();
	}
%>
Username: <%= username %><br/>
SessionId: <%= sessionId  %><br/>

<h2>Member area</h2>
<form action="<%= request.getContextPath() %>/MemberAreaController" method="get">
	<input type = "hidden" value = "destory" name ="action">
	<input type = "submit" value = "logout">
</form>

</body>
</html>