<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok.jsp</title>
</head>
<body>
<h5>ok.jsp<br/>
 http://127.0.0.1:8081/wp/ch03/ok.jsp<br/>
 http://<%=request.getServerName() %>:<%=request.getServerPort() %><%=request.getContextPath() %>/ch03/ok.jsp</h5>
 <hr/>
 ★getMethod:<%=request.getMethod() %><br/>
 <pre>
 교재  -로그인처리 기능구현  p607참고
 교재에서는  form에서의 요청방식을 파악하여
 get방식이면   prcessForm()메서드를 호출, =>p607 22라인
 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p607 24라인
 --------------------
 교재  -비번변경 기능구현  p622~623참고
 교재에서는  form에서의 요청방식을 파악하여
 get방식이면   prcessForm()메서드를 호출, =>p622 22라인
 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p622 24라인
 --------------------
 교재  -글쓰기 기능구현  p641
 get방식이면   prcessForm()메서드를 호출, =>p641 21라인
 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p641 23라인
 --------------------
 교재  -글수정 기능구현  p669
 get방식이면   prcessForm()메서드를 호출, =>p669 28라인
 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p669 30라인
 
 </pre>
 <hr/>
 <% /*이 문서는 client의 요청request을 받아서 
           비즈니스로직처리하는 server측의 문서이다*/
 //이름:<input type="text"  name="userName" value="hong길동"/>
 //비밀번호:<input type="password" name="userPwd"  value="1234"/>      
  //<input type="radio" name="snsYN" id="snsY"  value="Y"  checked="checked"/>수신허용
 //<input type="checkbox" name="season" id="season1" value="spring" />
        //client의 요청request을 받아서 변수에 할당
       String name = request.getParameter("userName"); //이름
       String pwd = request.getParameter("userPwd");//비밀번호
       String snsYN = request.getParameter("snsYN");//수신여부
       String[] seasons = request.getParameterValues ("season"); //좋아하는 계절
       out.println("seasons="+seasons);
       //브라우저에 출력
      out.println("user가 입력한 내용");  
      out.println("<br/>이름:"+name);  
      out.println("<br/>비밀번호:"+pwd);  
      out.println("<br/>sns수신여부:"+snsYN); 
      if( seasons != null ){
          out.println("<br/>좋아하는 계절:"+ java.util.Arrays.toString(seasons) );
	      for(String season : seasons ){
	      	out.println("<br/>좋아하는 계절:"+season);
	      }
      }      
 %>

 <hr/>
 <%
   //p77 25라인 참고
 	//request.getParameterNames() : 파라미터이름들 가져오기
 	out.println("*파라미터이름: user가 입력선택값 출력하기<br/>");
 	Enumeration<String> names = request.getParameterNames();
    while( names.hasMoreElements() ){
    	String paramerName = names.nextElement();
		
    	//p77 37라인 참고
    	//request.getParameterMap() : 브라우저가 전송한 파라미터의 맵
		 Map<String, String[]> map = request.getParameterMap();
		 String[] value = map.get(paramerName);
		
		 //여기에서는 브라우저에서 넘어온 값들이므로(배열형식)
		 //향상된 for문을 사용하여
		 //브라우저에      파라미터명 : user가 입력선택값   형식으로   출력하련다
		 for(String v  : value){
		   out.println(paramerName+ " : "+  v+"<br/>");
		 }
		 
    }
 %>
 
</body>
</html>











