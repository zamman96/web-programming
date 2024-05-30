<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

request.setCharacterEncoding("utf-8");
String userId = request.getParameter("id");
String userName = request.getParameter("name");
String userMail = request.getParameter("email");

// db 를 이용한 crud 처리
// 처리한 결과값을 가지고 응답데이터를 생성한다


	
%>

{
	"id" : "<%=userId %>", 
	"name" : "<%=userName %>",
	"email" : "<%=userMail %>"

}