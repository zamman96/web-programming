<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	border-color : teal green;
	border-style: solid dotted;
	border-wideth : 5px 3px;
	margin: 30px auto;
}
th{
	background : teal;
	color : white;
	height:30px;
	width:100px;
}
td{
	padding : 10px;
	width: 200px;
	height: 20px;
}
#col{
	height: 200px;
	vertical-align: top;
}

</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String info = request.getParameter("info");
	// info에는 엔터가 포함되어 있다 - \r\n : \r(커서를 앞으로 보내는 것 > 캐리지 리턴) \n(newLine)
	
	// \n을 <br>태그로 변환한다
	info=info.replaceAll("\n", "<br>");
%>

</body>
<table border="1">
<tr>
<th>아이디</th>
<td><%=id %></td>
</tr>
<tr>
<th colspan="2">나의 소개</th>
</tr>
<tr>
<td colspan="2" id="col"><%=info %></td>
</tr>

</table>
</html>