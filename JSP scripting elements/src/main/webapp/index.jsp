<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Scripting Elements</title>
</head>
<body>
<h1> JSP Scripting Elements</h1>
<%-- These are comments --%>

<%-- Expression => should in single line --%>
<%= 5-5 %> 

<%-- Scriptlet => it can be in any number of lines --%>
<br/>
<% 
out.println("Hello World"); 
%>

<%-- declarations => it just like variable declaration --%>
<%! 
int a = 10;
int b = 20;
%>

<br/>
<%= a+b %>
</body>
</html>