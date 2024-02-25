<%@ page import="java.util.HashSet,java.util.Set" %>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set</title>
</head>
<body>
	<h3>protocol://domainname:port/path</h3>
	<h3>http://127.0.0.1:8081/webPro/cf/setEx01.jsp</h3>
	<hr/>
	<h2>회원명단(HashSet구현클래스 사용)</h2>
<% //java코드작성
//HashSet객체를 생성하여 임의의 이름 5개를 저장
//클래스 참조변수 =  new 클래스명();
//HashSet<String> nameList =  new HashSet<String>();

//상위클래스 참조변수 =  new 하위클래스명();
//인터페이스 참조변수 =  new 구현클래스명();
Set<String> nameList =  new HashSet<String>();
nameList.add("김길동");
nameList.add("이순신");
nameList.add("세종대왕");
nameList.add("김9");
nameList.add("원빈");
nameList.add("원빈");

for( String name: nameList ){
	System.out.println( name );  //console에 출력
	out.println( name+"<br/>" );  //브라우저에 출력
}

%>	


</body>
</html>








