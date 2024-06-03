<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="kr.or.ddit.member.vo.ZipVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

List<ZipVO> list = (List<ZipVO>)request.getAttribute("listvalue");

Gson gson = new GsonBuilder().setPrettyPrinting().create();
String json = gson.toJson(list);
out.print(json);
out.flush();
%>