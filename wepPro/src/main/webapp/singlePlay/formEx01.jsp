<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form practice</title>
</head>
<body>
<h4>URI : http://<%=request.getServerName()%>:<%=request.getServerPort()%><%=request.getRequestURI() %></h4>
<ul>
 <li> ul, li 연습(무순서)</li>
 <li type="square">첫번째 스퀘어</li>
 <li type="circle">두번째 써클</li>
</ul>

<ol>
 <li> ol, li 연습(순서)</li>
 <li type="A">영문 대문자
 <li type="a">영문 소문자도 가능
 <li type="I">로마 숫자 대문자
 <li type="i">로마 숫자 소문자도 가능
</ol>
</hr>
<h3>폼 테그 연습</h3>
<form method="get" action="formEx02_AfterLogin.jsp" >
 <fieldset>
  <legend>Login ID/PW</legend>
   <ul>
	<li>ID <input type="text" name="id" id="userId" required="required" value="default">
	<li>PW <input type="password" name="pw" id="userPw" required="required" value="1234">
   </ul>
 </fieldset>
 <fieldset>
  <legend>Option</legend>
   <ul>
    <li>Gender</br>
     <input type="radio" name="gender" id="genderMan" value="Man" checked="checked">남성
     <input type="radio" name="gender" id="genderWoman" value="Woman">여성
    </li>
    <li>Favorite Season</br>
     <input type="checkbox" name="season" id="Spring" value="Spring">봄
     <input type="checkbox" name="season" id="Summer" value="Summer">여름
     <input type="checkbox" name="season" id="Auturm" value="Auturm">가을
     <input type="checkbox" name="season" id="Winter" value="Winter">겨울
   </ul>
 </fieldset>
 <input type="submit" value="전송">
 <input type="reset" value="초기화">
</form>
</body>
</html>