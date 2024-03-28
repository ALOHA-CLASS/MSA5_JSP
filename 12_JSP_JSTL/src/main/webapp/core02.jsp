<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core</title>
</head>
<body>
	<c:set var="number" value="10" />
	
	<c:if test="${number % 3 == 0}">
		<c:out value="3의 배수입니다."/>
	</c:if>
	<c:if test="${number % 2 == 0}">
		<c:out value="2의 배수입니다."/>
	</c:if>
	
	
</body>
</html>







