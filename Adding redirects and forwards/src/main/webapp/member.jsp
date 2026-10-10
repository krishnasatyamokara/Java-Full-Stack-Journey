
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Area</title>
</head>
<body>

<%
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect(
            request.getContextPath() + "/login.jsp"
        );
        return;
    }

    String sessionId = session.getId();
%>

Username: <%= username %><br/>
Session ID: <%= sessionId %><br/>

<h2>Member Area</h2>

<form action="<%= request.getContextPath() %>/MemberAreaController"
      method="get">
    <input type="hidden" name="action" value="destroy">
    <input type="submit" value="Logout">
</form>

</body>
</html>
