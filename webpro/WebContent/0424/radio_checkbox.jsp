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
table{
	border : 2px solid blue;
	margin : 10px;
	padding : 10px;
}
td {
	width: 300px;
	height: 50px;
	text-align: center;
}
th{
	width: 400px;
	background: orange;
}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String file = request.getParameter("file");
	String[] food = request.getParameterValues("food");
	String str = "";
	for(String f : food){
		str+=f+"&nbsp;&nbsp;";
	}
%>

<table border="1">
	<tr>
		<th>아이디</th>
		<td><%= id %></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><%= name %></td>
	</tr>
	<tr>
		<th>성별</th>
		<td><%= gender %></td>
	</tr>
	<tr>
		<th>좋아하는 음식</th>
		<td><%= str %></td>
	</tr>
	<tr>
		<th>첨부파일</th>
		<td><%= file %></td>
	</tr>
</table>
</body>
</html>