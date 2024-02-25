<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request객체(p73)</title> 
</head>
<body>
 <h3>request객체(p73)</h3>
 <h4>http://localhost:8081/webPro/ch03/requestP73.jsp</h4>
 <hr/>
 <% //scriptlit           02-123-1234     031-111-9999
        //801206-1234567
        String ssn ="801206-1234567";
        System.out.println(ssn);
        System.out.println(ssn.substring(7)  ); //1234567
        System.out.println(ssn.substring(2)  ); //1206-1234567
        System.out.println(ssn.substring(2,6)  ); //1206
        System.out.println(ssn.length()); //글자길이
        //-------------------------------
       String uri =request.getRequestURI() ;
       String contextPath = request.getContextPath();
       out.println(uri); //         /webPro/ch03/requestP73.jsp
       out.println("<br/>");
       out.println(contextPath); //    /webPro 
       out.println("<br/>");
       out.println(contextPath.length()); //7
       out.println("<br/>");
       out.println(  uri.substring(7)    );   //   /ch03/requestP73.jsp
       out.println("<br/>");
       out.println(  uri.substring(contextPath.length())    );//   /ch03/requestP73.jsp
       out.println("<br/>");
       out.println(  uri.substring(request.getContextPath().length())    );//   /ch03/requestP73.jsp
 %>
 <hr/>
 <ul>
  <li>getProtocol:<%=request.getProtocol() %></li>
  <li>★getMethod:<%=request.getMethod() %></li>
  <li>★★★getRequestURI:<%=request.getRequestURI() %></li>
  <li>★★★getContextPath:<%=request.getContextPath() %></li>
  <li>getServerName:<%=request.getServerName() %></li>
  <li>getServerPort:<%=request.getServerPort() %></li>
  <li>(클라이언트ip주소)getRemoteAddr():<%=request.getRemoteAddr() %></li>
  <li>getContentLength():<%=request.getContentLength() %></li>
  <li>getCharacterEncoding:<%=request.getCharacterEncoding()%></li>
  <li>getContentType:<%=request.getContentType() %></li>
 </ul>
</body>
</html>





