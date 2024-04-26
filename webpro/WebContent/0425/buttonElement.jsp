<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버튼 요소</title>
</head>
<body>
<form action="buttonSend.jsp" method="post">
	아이디<input type="text" name="id"><br>
	이름<input type="text" name="name"><br>
	전화번호<input type="text" name="tel"><br>
	주소<input type="text" name="addr"><br>
	<input type="hidden" name="age" value="30"><br>	<!-- hidden타입엔  value필수요소 -->
	
	<button>전송</button>
	<button type="submit" onclick="alert('정보입력이 완료되었습니다')">전송</button>
	<button type="reset">취소</button>
	<button type="button" onclick="alert('hello')">확인</button>
</form>
</body>
</html>