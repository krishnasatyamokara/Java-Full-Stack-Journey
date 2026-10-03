<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward and redirect into jsp</title>
</head>
<body>
	This is the original page
	<!--<jsp:forward page="forward.jsp"></jsp:forward> -->
	<!--  above code and this are same -->
	
	<%
		//request.getRequestDispatcher("forward.jsp").forward(request,response);
		response.sendRedirect("redirect.jsp");
	%>
	
</body>
</html>