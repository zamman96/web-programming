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
</style>
</head>
<body>
<h1>JSP : Java Server Page</h1>
<%
request.setCharacterEncoding("UTF-8");
String userId = request.getParameter("id");
String userName = request.getParameter("name");
String userTel = request.getParameter("tel");
String userAddr = request.getParameter("addr");
String userAge = request.getParameter("age");
%>
<table border="1">
<tr>
	<th>아이디</th>
	<td><%=userId %>
</tr>
<tr>
	<th>이름</th>
	<td><%=userName %>
</tr>
<tr>
	<th>전화번호</th>
	<td><%=userTel %>
</tr>
<tr>
	<th>주소</th>
	<td><%=userAddr %>
</tr>
<tr>
	<th>나이</th>
	<td><%=userAge %>
</tr>

</table>

</body>
</html>