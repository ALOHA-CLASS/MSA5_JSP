<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 액션 태그</title>
</head>
<body>
	<%-- 자바빈즈는 반드시 패키지에 있어야합니다. --%>
	<%-- person 이름으로 Person 객체 생성 --%>
	<jsp:useBean id="person" class="beans.Person" />

	<h3>이름 : <%= person.getName() %></h3>	
	<h3>나이 : <%= person.getAge() %></h3>	
	
</body>
</html>