<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h4>b.jsp문서</h4>
  <xmp>
  출발페이지-> a.jsp문서거쳐서->b.jsp
  user가 보게되는 응답페이지가 될 예정
  </xmp>
  <% 
  String vid = request.getParameter("id"); //id
  String vage = request.getParameter("age"); //age
   System.out.println("\n b.jsp문서입니다"); //콘솔에 출력
   System.out.println("a.jsp를 통해서 건네받은 파라미터id="+vid); 
   System.out.println("a.jsp를 통해서 건네받은 파라미터age="+vage);
   
   //브라우저에 출력
   out.println("a.jsp를 통해서 건네받은 파라미터id="+vid);
   out.println("<br/>a.jsp를 통해서 건네받은 파라미터age="+vage);
  %>
</body>
</html>


