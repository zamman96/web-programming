<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#pname{
	font-size : 2.0rem;
	color : blue;
}
#ptel{
	font-size : 1.5rem;
}
</style>
</head>
<body>
<h1>Hello~~</h1>
<p>클라이언트의 요청에 의해서<br>
 서버내에서 실행되는 JSP파일입니다</p>
<%

	//post 방식엔 반드시 인코딩 설정
	request.setCharacterEncoding("UTF-8");
	// 전송 시 데이터 - name , tel
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
		// db 연결, CRUD -
		// crud결과로 응답데이터 설정
		
%>
<p id="pname"><%=name %>님 환영합니다</p>
<p id="ptel"><%=tel %>로 전화할게요</p>
</body>
</html>