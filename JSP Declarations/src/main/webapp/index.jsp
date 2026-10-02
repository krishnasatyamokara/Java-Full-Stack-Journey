<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Declarations</title>
</head>
<body>
<%-- declaring elements using scriptlet --%>
<%--<% int x = 10; %>  its ok declaring like this but when we use access specifiers it will not work so why we are using declarations --%>
<%! public int x = 10; %>
<%= 
x
%>
<%!
String message(){
	return "Hello";
}
%>
<br/>
<%= message() %>
</body>
</html>