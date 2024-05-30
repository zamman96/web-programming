<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 

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
 --%>
 
 <%
 
 // Java 객체를 JSON표현식으로 변환하는 API - 직렬화  - Gson.toJSON(obj)
 // 변수를 지정해서 json을 만들 수 없고 전체 출력된다
 
 List<MemberVO> list = (List<MemberVO>)request.getAttribute("listvalue");

// json이 한줄로 출력됨 (Network>Response)
//  Gson gson = new Gson();

// json이 보기 좋게 출력됨
 Gson gson = new GsonBuilder().setPrettyPrinting().create();
 String json = gson.toJson(list);
 // out이 내장 객체이므로 생성 안해줘도 됨
 out.print(json);
 out.flush();
 %>