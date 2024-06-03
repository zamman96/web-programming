<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 저장한 데이터 꺼내기
	int cnt = (int)request.getAttribute("cnt");
	if(cnt>0){
%>
	{
		"flag" : "회원가입이 완료되었습니다."
	}

<%
		
	}else{
		
%>
	{
		"flag" : "회원가입에 실패했습니다."
	}
<%
		
	}
%>