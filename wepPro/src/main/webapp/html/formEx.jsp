<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx</title>
<style>
 /*css 주석문*/
 /*선택자   { css속성:값;css속성:값; }  */
 /* 선택자에는 tag,     .클래스명   #id명*/
.c1   {width:100px;}  
/*클래스명이 c1인요소에 대하여  너비(width)를 100px로 적용
    여기에서는  이미지와  submit역할을 하는 input요소의 
    너비(width)를 100px로 적용하겠다는 의미이다*/
</style>
</head>
<body>
 <%--  
        oninput은 input이벤트가 발생되면
        parseInt(price.value)은 name속성이 price인 요소의 값(value)을  정수화한다
        x.value는   name속성이 x인 요소의 값(value)을 의미
        x.value=parseInt(price.value)은
        price의 값을 정수화하여 output요소의 값으로 설정하라는 의미  --%>
  <form name="frm" id="frm" method="get" action="ok.jsp"
               oninput="x.value=parseInt(price.value)" >
   <input type="submit"  value="확인"/>
   <img src="http://localhost:8081/webPro/imgs/submit-button.png"
              alt="submitIMG" title="전송이미지"  class="c1" />
   <input  type="image" 
                   src="<%=request.getContextPath() %>/imgs/submit-button.png"
                   title="sumit역할이미지"
                   class="c1" />           
   <input type="reset"  value="취소"/>
   <br/>
   <input type="button" value="type속성값이 button" onclick="alert('안녕!');"/>
   <button>button요소(submit역할)</button>
   <button type="button">button요소(type="button")</button>
   <button type="submit">button요소(type="submit")</button>
   <button type="reset">button요소(type="reset")</button>
   <fieldset>
   	<legend>html의 여러 type속성값</legend>
  	<ul>
  	    <%  int  bno = 999;%>
  		<li>★hidden :
  		<input type="hidden" name="bno" id="bno" value="<%=bno %>"/></li>
  		 
  		 <li>search:<input type="search" name="search" id="search" autofocus="autofocus" placeholder="검색어를 입력하세요" /></li>
  		 
  		 <li>범위range:
  		      <span id="minPrice">1000</span>
  		      <input type="range" name="price" id="price" 
  		                               min="1000" max="10000"  step="1"/>
  		     <span id="maxPrice">10000</span>
  		      =>
  		      선택한 값: <output name="x" for="price"></output>
  		 </li>
  		 
  		 <li>주문수량number:
  		       <input type="number" name="orderQty" id="orderQty" value="1" max="10" min="0" step="1"/>
  		 </li>
  		 
   	    <%--  file=recapi_architecture_9.png   
  	            	file업로드기능구현시 (자세한내용은  jsp P696참고)
  	            	반드시  method="post" 
  	             	enctype="multipart/form-date" 속성값으로 설정해야한다 --%>
  		 <li>file:<input type="file" name="file" id="file"/></li>
  		 
  	     <%--red선택시 color=%23ff0000   #ff0000 --%>
  		 <li>color:<input type="color" name="col" id="col"/></li>
  		 
  		 <%-- d1=2024-02-26 --%>
  		 <li>date:<input type="date" name="d1" id="d1"/></li>
  		 
  		 <%--d2=2024-02-06T06%3A23  --%>
  		 <li>datetime-local:<input type="datetime-local" name="d2" id="d2"/></li>
  		 
  		 <%-- 2024년2월선택시    d3=2024-02    --%>
  		 <li>month:<input type="month" name="d3" id="d3"/></li>
  		 
  		 <%--  2024년1월1일을 선택시    d4=2024-W01 --%>
  		 <li>week:<input type="week" name="d4" id="d4"/></li>
  		 
  		 <%--  24시기준에서  점심무렵 12시 23분 선택시   d5=12%3A23 --%>
  		 <li>time:<input type="time" name="d5" id="d5"/></li>
  		 
  		 <%-- browser마다 지원형태 다르다. javascript, jQuery이용해서 유효성검사 --%>
  		 <li>email:<input type="email" name="email" id="email"/></li>
  		 <li>tel:<input type="tel" name="tel" id="tel"/></li>
  		 <li>url:<input type="url" name="url" id="url"/></li>
  	</ul>	 	
   </fieldset>
   
  <ul>
   <li>이름( maxlength속성="10"):
   <input type="text" name="uName" id="uName" 
   				 required="required" size="15" maxlength="10"/></li>
   <li>비번(size속성="기본값20"):
   <input type="password" name="uPwd" id="uPwd"  size="20"/></li>
   <li>성별(단일선택):
   	   <input type="radio" name="gender" id="gender0" value="f" checked="checked"/><label for="gender0">여성</label>
   	   <input type="radio" name="gender" id="gender1" value="m" /><label for="gender1">남성</label>
   </li>
   <li>좋아하는 동물(다중선택):
      <input type="checkbox" name="animals"  id="a0" value="dog"  checked="checked"/><label for="a0">강아지</label>
      <input type="checkbox" name="animals"  id="a1" value="cat"/><label for="a1">고양이</label>
      <input type="checkbox" name="animals"  id="a2" value="bird"/><label for="a2">새</label>
      <input type="checkbox" name="animals"  id="a3" value="fish"/><label for="a3">물고기</label>
   </li>
   <li>언어(단일선택):
    <select name="language" id="language">
    	<option value="0">선택</option>
    	<option value="korean">국어</option>
    	<option value="english">영어</option>
    	<option value="japan">일어</option>
    	<option value="china">중국어</option>
    </select>
   </li>
   <li>언어(다중선택):
    <select name="language1" id="languag1" size="7" multiple="multiple">
    	<option value="0">선택</option>
    	<option value="korean">국어</option>
    	<option value="english">영어</option>
    	<option value="japan">일어</option>
    	<option value="china">중국어</option>
    </select>
   </li>
   <li>브라우저(input-datalist):
      <input list="browsers" name="browsers">
	  <datalist id="browsers">
	    <option value="Edge">
	    <option value="Firefox">
	    <option value="Chrome">
	    <option value="Opera">
	    <option value="Safari">
	  </datalist>
   </li>
   <li>자기소개(textarea의 rows,cols속성):
        <textarea name="mySelf" id="mySelf" rows="5" cols="30">tx기본값</textarea>
   </li>
   <li>자기소개(textarea에 style적용  style="css속성명:값;"):
        <textarea name="mySelf1" id="mySelf1" style="height:80px;width:240px;">tx기본값</textarea>
   </li>
  </ul>
  </form>
  
  
  <hr/>
  <h4>form(웹교재P133)</h4>
  <pre>
   <a href="https://www.w3schools.com/html/html_forms.asp" target="_blank">form참고</a>
  </pre><hr/>
</body>
</html>






