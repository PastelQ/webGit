<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h4>a.jsp문서</h4>
  <xmp>
  출발페이지->이 a.jsp문서
  a.jsp?id=hongid&age=30
  곧 목적지가 아닌 경유페이지가 될 예정
  </xmp>
  <%
  String vid = request.getParameter("id"); //id
  String vage = request.getParameter("age"); //age
   response.sendRedirect("b.jsp");
   System.out.println("a.jsp문서입니다"); //콘솔에 출력
   System.out.println("파라미터id="+vid); 
   System.out.println("파라미터age="+vage); 
  %>
</body>
</html>




