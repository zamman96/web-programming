<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	color : purple;
}
</style>
</head>
<body>
<h1>JSP : Java Server Page</h1>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String age = request.getParameter("age");
	String alias = request.getParameter("alias");
	
%>

<%=id %> - readonly <br>
<%=age %> - hidden <br>
<%=alias %> - disabled <br> <!--null출력  -->
</body>
</html>