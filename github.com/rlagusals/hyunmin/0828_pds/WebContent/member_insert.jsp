<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>
<%
  request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<div class='content'>
  <form name='frm' method='post' action='./member_proc.jsp' enctype='multipart/form-data'>
    
    <h1 align='center'>회원 등록</h1>

<table style=width:80% align=center>
  <tr>
    <th>아이디</th>
    <td><input id='id' name='id' type='text'></th>
  </tr>
  <tr>
    <th>비밀번호</th>
    <td><input id='pw' name='pw' type='text'></td>
  </tr>
  <tr>
    <th>성명</th>
    <td><input id='name' name='name' type='text'></td>
  </tr>
  <tr>
    <th>이메일</th>
    <td><input id='email' name='email' type='text'></td>
  </tr>
  <tr>
    <th>연락처</th>
    <td><input id='phone' name='phone' type='text'></td>
  </tr>
  <tr >
  	<td colspan="2"><button>등록 </button> <button> 조회</button></td>
  </tr>
  
  
</table>
    </form>
  </div>
</body>
</html>