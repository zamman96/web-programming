<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	color : maroon;
}

h2, h3{
	color : pink;
}
</style>
</head>
<body>
<h1>JSP : Java Server Page</h1>
<% String userId = request.getParameter("id"); %>

<h2>당신의 아이디는 <%=userId %>입니다 <br>
<%=userId %>님 환영합니다</h2>
</body>
</html>