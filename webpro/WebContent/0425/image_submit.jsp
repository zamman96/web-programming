<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="imageSend.jsp" method="post">
	아이디<input type="text" name="id"><br>
	이름<input type="text" name="name"><br>
	전화번호<input type="text" name="tel"><br>
	주소<input type="text" name="addr"><br>
	<input type="hidden" name="age" value="30"><br>	<!-- hidden타입엔  value필수요소 -->
	
	<input type="image" src="../images/check.png" alt="check">
	<input type="reset">
</form>
</body>
</html>