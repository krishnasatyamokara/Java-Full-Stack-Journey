<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/include/header.jsp">
    <jsp:param value="Error Page" name="titlePage"/>
</jsp:include>

<h1>Page Not Found</h1>
<p>The requested page could not be found.</p>

<a href="<%= request.getContextPath() %>/Home?page=home">
    Return to Home
</a>

<jsp:include page="/include/footer.jsp"/>