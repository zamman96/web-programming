<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	border : 10px inset pink;
}
th{
	width: 350 px;
}
td{
	width: 300 px;
	height: 100 px;
}
</style>
</head>
<body>
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