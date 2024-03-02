<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키(cookieEx01.jsp)</title>
</head>
<body>
 <h4>cookieEx01.jsp(교재p205)</h4>
 <%-- 이문서에는  쿠키를 만들어서   response에 실어서 client에게 줄 예정 --%>
 <%
 	//1. Cookie를 생성
 	Cookie cookie = new Cookie("id","hongid");
 	//2. 저장 위치를 지정
 	cookie.setPath("/");
 	//3.setMaxAge() : 생존기간 설정(선택)
 	cookie.setMaxAge(60*60*24); //초단위. //하루//0이면 쿠키삭제를 의미.
 	//4.★이렇게 해서 만들어진 쿠키를  response에 실어서 client에게 보내기
 	response.addCookie(cookie);
 	
 	//만약 여러 개의 쿠키정보를 client에게 제공하고 싶으면 반복작업
 	//1. Cookie를 생성
 	cookie = new Cookie("nickName","ahaha");
 	
 	//value를 변경할 수 있다
 	cookie.setValue("hohohohoho");
 	
 	//2. 저장 위치를 지정
 	cookie.setPath("/");

 	//4.★이렇게 해서 만들어진 쿠키를  response에 실어서 client에게 보내기
 	response.addCookie(cookie);
 	
 %>
  <p>쿠키 굽는데 성공했어요!</p>
</body>
</html>














