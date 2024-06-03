<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int count = (int)(request.getAttribute("cnt"));

	if(count>0){
		%>
{
	"flag" : "사용불가능한 아이디"
}
<% 
	}else{
%>
{
	"flag" : "사용가능한 아이디"
}
<%
	}
%>		
%>
