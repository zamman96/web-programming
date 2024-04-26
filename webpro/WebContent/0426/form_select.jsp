<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	border : 5px dotted green;
	margin : 30px auto;
}
th{
	background : teal;
	color : white;
	width: 80px;
	height: 50px;
	padding: 5px;
}
td{
	padding : 5px;
}
</style>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String food = request.getParameter("food");
	String[] foods = request.getParameterValues("foods");
	
	String value = "";
	for(String str : foods){
		value += str+" ";
	}
%>

<table border="1">
	<tr>
		<th>이름</th>
		<td><%=name %></td>
	</tr>
	<tr>
		<th>음식</th>
		<td><%=food %></td>
	</tr>
	<tr>
		<th>전체 음식</th>
		<td><%=value %></td>
	</tr>
</table>

</body>
</html>