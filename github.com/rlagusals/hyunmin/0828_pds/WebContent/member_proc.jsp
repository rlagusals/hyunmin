<%@page import="member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body leftmargin="0" topmargin="0">

<%
	String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String phone = request.getParameter("phone");
  
  m = new member.MemberVO();
  m.setId(id);
  m.setPw(pw);
  m.setName(name);
  m.setEmail(email);
  m.setPhone(phone);
%>
 회원정보가 등록되었습니다. 
  <input type="button" value="등록" onclick="location.href='./member_insert.jsp'">
  <input type="button" value="조회" onclick= "location.href='./custom01_list.jsp'">
</body>
</html>