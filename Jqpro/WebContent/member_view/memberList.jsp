<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// controller에서 저장한 데이터꺼내기

List<MemberVO> list = (List<MemberVO>)request.getAttribute("listvalue");

%>

[
<%
for(int i=0; i<list.size();i++){
	MemberVO vo = list.get(i);
	
	// out 객체를 따로 만들지 않음 내장객체
	if(i!=0){
		out.print(",");
	}
%>
	{
		"mem_id" : "<%=vo.getMem_id() %>", 		
		"mem_name" : "<%=vo.getMem_name() %>",
		"mem_mail" : "<%=vo.getMem_mail() %>",
		"mem_hp" : "<%=vo.getMem_hp() %>"
	}
<%	

}
%>

]
