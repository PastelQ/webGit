<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지강제이동</title>
</head>
<body>
 <h4>link_forward_actionTag.jsp문서</h4>
 <h5>출발(메인이라고)</h5>
 <a href="c.jsp?id=hongid&age=30">c.jsp이동</a>
 
 <%-- 아래는 참고
 <h4>linkEx01.jsp</h4>
 <xmp>
 -html
<a href="URL" target='_blank | _self |  등등'>글자 또는 이미지</a>
<a href="http://www.naver.com">네이버</a>

-javascript
<span onclick="location.href='URL'">글자</span>
 </xmp>  <hr/>
 <ul>html의 a요소이용: 
  <li><a href="http://www.naver.com">네이버(기본)</a></li>
  <li><a href="http://www.naver.com" target="_self">네이버(_self)</a></li>
  <li><a href="http://www.naver.com" target="_blank">네이버(_blank):새window,새tab</a></li>
  <li><a href="formEx.jsp" target="_blank">formEx.jsp(_blank):새window,새tab</a></li>
</ul>
  
 <hr/>
 
 <ol>-javascript이용:
  <li><span onclick="location.href='http://www.naver.com'">네이버</span><li>
  <li>
   <span onclick="location.href='<%=request.getContextPath()%>/html/formEx.jsp'">formEx.jsp</span><li>
  </ol>
  <hr/> 
  
  <iframe name="innerFrame" src="http://www.nate.com"></iframe>
  --%>
  
  
  
  
</body>
</html>





