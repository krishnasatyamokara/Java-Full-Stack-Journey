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
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie cookie: cookies){
		if(cookie.getName().equals("username")){
			username = cookie.getValue();
		}
		if(cookie.getName().equals("JSESSIONID")){
			sessionId = cookie.getValue();
		}
	}
}
if(sessionId == null || username == null){
	response.sendRedirect("login.jsp");
	return;
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