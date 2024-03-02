<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
  <h4>logout.jsp이지만 브라우저에는 이 화면이 보이지 않아요</h4>
  <%
  //로그아웃 기능 구현을 담당하는 LogoutHandler(p611)의 작업
  	session.invalidate();//세션의 모든 정보를 제거
  %>
<jsp:forward  page="../index.jsp" ></jsp:forward>


</body>
</html>






