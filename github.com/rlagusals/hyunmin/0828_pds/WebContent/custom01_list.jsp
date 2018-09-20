<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<%@page import="member.MemberVO"%>
<%@page import="member.DB"%>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}
</style>
</head>
<body>
  <%
  	ArrayList<member.MemberVO> list = mVO.list();
  %>
  <DIV class="title"><h1 align='center'>회원목록조회</h1></DIV>
  <div class="container">
  <div class="row">
  <div class="col">

  <table class="table table-hover table-bordered">
    <tr>
      <th class="th" style="width: 10%">아이디</th>
      <th class="th" style="width: 10%">비밀번호</th>
      <th class="th" style="width: 10%">이름</th>
      <th class="th" style="width: 20%">이메일</th>
      <th class="th" style="width: 20%">연락처</th>
    </tr>
    <%
    	for (int index = 0; index < list.size(); index++) {
        		member.MemberVO m = list.get(index);
    %>
    <tr>
      <td class="td"><%=m.getId()%></td>
      <td class="td"><%=m.getPw()%></td>
      <td class="td"><%=m.getName()%></td>
      <td class="td"><%=m.getEmail()%></td>
      <td class="td"><%=m.getPhone()%></td>
    </tr>
    <%
    	}
    %>
  </table>
  </div>
  </div>
  </div>
  <div class="bottom">
    <button type="button" onclick="location.href='./member_insert.jsp'">다시 가입</button>
  </div>
  <b>HEDKOREA Copyrightⓒ 2015 All rights reserved. Human Resources Development Service of Korea</b>
</body>
</html>