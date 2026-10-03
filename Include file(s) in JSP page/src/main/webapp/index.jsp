<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp files</title>
</head>
<body>
	<h2>Jsp files</h2>
	<br/>
	<%-- this is static way of including file --%>
	<%@ include file="file1.txt" %>
	
	<br/>
	<%-- This is dynamic way of including file --%>
	<jsp:include page="file2.txt"/>

</body>
</html>