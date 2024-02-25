<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>link</title>
</head>
<body>
<% 
  String uri =request.getRequestURI() ;
  String contextPath = request.getContextPath();
  out.println(  uri.substring(contextPath.length())    );//   /ch03/requestP73.jsp
  out.println(  uri.substring(request.getContextPath().length())    );//   /ch03/requestP73.jsp
%>
 <h4>http://localhost:8081/webPro/link.jsp</h4>
           http://localhost:8081/webPro/ch03/requestP73.jsp
나기준:대한민국 서울 강남구 테헤란로 7길 7(역삼동 에스코빌딩 6층)                                                                      
 <ul>
  <li><a href="http://localhost:8081/webPro/ch03/requestP73.jsp">request기본객체(절대경로)</a></li>
  <li><a href="./ch03/requestP73.jsp">request기본객체(상대경로)</a></li>
  <li><a href="<%=request.getContextPath()%>/ch03/requestP73.jsp">request기본객체(reqeust객체활용:절대경로)</a></li>
  <li><a href="<%=request.getContextPath() %>">response기본객체</a></li>
 </ul>
</body>
</html>



