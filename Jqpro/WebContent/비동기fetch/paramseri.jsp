<%@page import="kr.or.ddit.vo.ParamsVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	/*
	직렬화 된 데이터 - 한 덩어리의 json문자열
	{id : " ", name : " ", email : " "}
*/
	StringBuffer strbuf = new StringBuffer();
	String line = null;
	
	try{
		BufferedReader reader = request.getReader();
		while( (line = reader.readLine()) !=null){
			strbuf.append(line);		
		}
	}catch(Exception e){
		
	}

	String reqdata = strbuf.toString(); 
	
	// 역직렬화 - json문자열객체를 - 자바 객체로 변환 (id, name, email을 포함하고 있는 VO 객체)
	Gson gson = new Gson();
	ParamsVO vo = gson.fromJson(reqdata, ParamsVO.class);
	
%>

{
	"id" : "<%=vo.getId() %>", 
	"name" : "<%=vo.getName() %>",
	"email" : "<%=vo.getEmail() %>"

}