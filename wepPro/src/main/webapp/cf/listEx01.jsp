<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.ArrayList,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<h3>protocol://domainname:port/path</h3>
	<h3>http://127.0.0.1:8081/webPro/cf/listEx01.jsp</h3>
<% //java코드작성
//ArrayList객체를 생성하여 임의의 이름 5개를 저장
//클래스 참조변수 =  new 클래스명();
//ArrayList<String> nameList =  new ArrayList<String>();

//상위클래스 참조변수 =  new 하위클래스명();
//인터페이스 참조변수 =  new 구현클래스명();
List<String> nameList =  new ArrayList<String>();
nameList.add("김길동");
nameList.add("이순신");
nameList.add("세종대왕");
nameList.add("김9");
nameList.add("원빈");

//console에 출력
for(int i=0; i<nameList.size()  ;i++ ){
	System.out.println(nameList.get(i));
}

%>	
	<hr/>
	<h2>회원명단(ArrayList구현클래스 사용)</h2>
<%
//브라우저에 출력
for(int i=0; i<nameList.size()  ;i++ ){
	String name = nameList.get(i);
%>	
	<%=name %><br/>   
<%
}
%>
</body>
</html>








