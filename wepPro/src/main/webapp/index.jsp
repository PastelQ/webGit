<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
 <h1>메인페이지(index.jsp/교재p609)</h1>
 프로토콜://serverIP주소:포트번호/contextPath<br/>
 http://localhost:8081<%=request.getContextPath() %>/index.jsp
<hr/>
<%
Object sessionObj = session.getAttribute("AUTH_USER_ID");
if(sessionObj  != null){
	String loginId = (String)session.getAttribute("AUTH_USER_ID");
%>
<%--  로그인 후   메뉴  ----------------------------------------- --%>
 <ul>
  <li><%=loginId %>님  <a href="./ch10/logout.jsp">로그아웃</a></li>
 </ul>
<% }else{ %>
<%--  로그인 전   메뉴  ----------------------------------------- --%>
<ul>
  <li>회원가입=>회원가입폼요청</li>
  <li>
  	<a href="<%=request.getContextPath() %>/ch10/loginForm.jsp">로그인(loginForm.jsp이동)=>로그인폼요청</a>	
  		a href="/login.do"로 변경할 예정(p608)
  </li>
</ul>
<% } %>

 
 
</body>
</html>





