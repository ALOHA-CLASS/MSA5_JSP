<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 속성 사용</title>
</head>
<body>
	<jsp:useBean id="person" class="beans.Person" />
	<h3>이름 : <%= person.getName() %></h3>	
	<h3>나이 : <%= person.getAge() %></h3>
	<hr>
<%-- 	<jsp:setProperty property="변수명" name="자바빈즈의 id" value="지정할 값" /> --%>
	<jsp:setProperty property="name" name="person" value="홍길동" />
	<jsp:setProperty property="age" name="person" value="20" />
	
	<h3>이름 : <jsp:getProperty property="name" name="person"/> </h3>	
	<h3>나이 : <jsp:getProperty property="age" name="person"/> </h3>
</body>
</html>


