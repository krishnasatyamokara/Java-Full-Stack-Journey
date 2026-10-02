<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Comments</title>
</head>
<body>
<!-- HTML Comment -->
<%
    int x = 25;
    // Java single-line comment
    /*
       Java multi-line comment
    */
    out.print("The value of x: ");
    out.print(x);
%>
<br/>
<%= x %>
<%--
    JSP comment
    This will not be sent to the browser.
--%>
</body>
</html>