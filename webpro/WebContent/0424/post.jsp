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
}
td {
	width: 300px;
	height: 50px;
	text-align: center;
}
th{
	height : 50px;
	background: gold;
}
</style>
</head>
<body>

<h1>JSP : Java Server Page</h1>
<h2>서버내에서 실행되는 스크립트형식의 파일</h2>
<h2>html코드와  java 문장을 사용할 수 있다.</h2>

<h3>java코드를 기술하기 위해서는 &lt;% %> 기호내에 기술한다</h3>
<h3>클라이언트가 전송한 데이터(id, password, name)를 받아서 처리한 후<br>
 결과를 클라이언트로 전송해준다</h3>
<h3>클라이언트가 전송한 데이터(id, password, name)를 받을 때 : request 내장 객체를 이용한다.</h3>
<h3>결과 생성 - html코드를 이용한다</h3>

<%
	request.setCharacterEncoding("UTF-8");	// 인코딩 설정
	String userId = request.getParameter("id");
	String userName = request.getParameter("name");
	String userPw = request.getParameter("pass");
	String userPcode = request.getParameter("pcode");
	
	// db 연결해서 CRUD 처리 후 결과를 응답 데이터로 생성한다.

%>

<%--JSP의 주석--%>
<%--결과를 table로 작성--%>
<!--html의 주석(소스보기로 보임)-->
<!--결과를 table로 작성-->
<table border="1">
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>비밀번호</th>
		<th>피코드</th>
	</tr>
	<tr>
		<td><%=userId %></td>
		<td><%=userName %></td>
		<td><%=userPw %></td>
		<td><%=userPcode %></td>
	</tr>
</table>



</body>
</html>