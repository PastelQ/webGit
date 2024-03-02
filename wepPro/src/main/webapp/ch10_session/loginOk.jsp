<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk</title>
</head>
<body>
  <h4>loginOk.jsp</h4>
  이 문서는 loginForm.jsp에서 client가 보낸 id,비번을 받아서 처리하는
  server측 페이지이다<br/>
  나중에는 LoginHandler.java(p606)에서 처리할 예정<hr/>
  <%  //MVC패턴 : client--요청(request)-->server
         //server는 요청에 따라 비즈니스로직을 수행
         //Controller가 호출된다
         
         //*Controller가 해야 할 일---------------------------------------
         //1.parameter얻기
         String id = request.getParameter("id");
  		 String pwd = request.getParameter("password");
  		//2.비즈니스로직을 수행:->Service<->DAO<->DB
  		//여기에서는 회원DB의 id를 java/ 비번qwert가정하고 진행
  		//비교하여 id와 비번이 모두 일치해야지만
  		//세션에 정보를 저장
  		String dbid = "java";
  		String dbpwd= "qwert";
  		if( dbid.equals(id)   &&   dbpwd.equals(pwd) ){
	         //3.Model - session을 이용,request를 이용
	         //session.setAttribute(String 속성명, Object 값)
	         session.setAttribute("AUTH_USER_ID",id);
	         session.setAttribute("AUTH_USER_PWD", pwd); //비번->제거

	         String loginId = (String)session.getAttribute("AUTH_USER_ID");
		     String loginPwd = (String)session.getAttribute("AUTH_USER_PWD");
%>
	  <ol>
	  	<li>세션에 저장된 id: <%=loginId %>  </li>
	  	<li>세션에 저장된 비번: <%=loginPwd %></li>
	  	<li><%=loginId %>님  <a href="logout.jsp">로그아웃</a>  </li>
	  </ol>
<%	         
  		 }else{
         //id나 비번이 불일치하면  loginForm.jsp로 이동
         //"id나 비번이 불일치합니다" 메세지를
         //client에게 보내줄 예정
          //3.Model처리
          //request.setAttribute(String 속성명, Object 값)
          request.setAttribute("errMSG", "id나 비번이 불일치합니다");
         System.out.println(      request.getAttribute("errMSG")    );//콘솔출력
         
         //4.View지정 
  		 	//out.println( "id나 비번이 불일치"); //loginOk.jsp 브라우저에 출력
         RequestDispatcher dispatcher = 
                  request.getRequestDispatcher("loginForm.jsp");
          dispatcher.forward(request, response);
         // response.sendRedirect("loginForm.jsp");
  		 }
         
  %>
  <hr/>
  <%       
         //세션이 생성된 시간
        long ct = session.getCreationTime();
        Date time = new Date(ct);
        SimpleDateFormat formatter  =
          new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");  //p235 7라인 
  %>
  //jsp에는 기본객체session 내장되어있다. servlet에서는 HttpSession얻어야한다
  <ul>
  	<li>session의 id:<%=session.getId() %></li>
  	<li>세션이 생성된 시간
  			<ol>
  				<li>session.getCreationTime():<%=session.getCreationTime() %></li>
	  			<li>Date객체이용:<%=time %></li>
	  			<li>포맷에 Date객체를 적용:<%=formatter.format(time) %></li>
  			</ol>
  	</li>
  	<li>최근접근시간 
  		session.getLastAccessedTime():<%=session.getLastAccessedTime() %>		
  	</li>
  </ul>
  
</body>
</html>






