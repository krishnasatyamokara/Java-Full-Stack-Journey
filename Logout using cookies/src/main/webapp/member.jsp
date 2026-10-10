
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie" %>

<%
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect(
                request.getContextPath() + "/login.jsp");
        return;
    }

    String sessionId = session.getId();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Area</title>
</head>
<body>

<h2>Member Area</h2>

Username: <%= username %><br/>
Session ID: <%= sessionId %><br/><br/>

<form action="<%= request.getContextPath() %>/MemeberAreaController"
      method="get">
    <input type="hidden" name="action" value="destory">
    <input type="submit" value="Logout">
</form>

</body>
</html>
