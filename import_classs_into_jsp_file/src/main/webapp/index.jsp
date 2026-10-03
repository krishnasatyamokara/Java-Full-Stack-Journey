<html>
<head>
<%@ page import="import_classs_into_jsp_file.HelloClass,java.util.Date" %></head>
<body>
<h2><%= "Hello World!" %></h2>
<%= new HelloClass().demo() %>
<br/>
<% out.println(new Date()); %>
</body>
</html>
