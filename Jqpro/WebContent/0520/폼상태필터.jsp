<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP: Java Server Page</h1>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String select = request.getParameter("disSelect");
	String text = request.getParameter("enTextarea");
%>

아이디 : <%=id %><br>
비밀번호 : <%=pass %><br>
선택 : <%=select %><br>
텍스트 : <%=text %><br>
</body>
</html>