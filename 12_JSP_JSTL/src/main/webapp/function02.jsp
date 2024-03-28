<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fn</title>
</head>
<body>
	<c:set var="texts" value="${fn:split('Hello, Java Server Pages!', ' ')}" />
	<c:forEach var="i" begin="0" end="${fn:length(texts)-1}">
		<p>text[${i}] =${texts[i]}
	</c:forEach>
	<p><c:out value="${fn:join(texts, '-')}" />
</body>
</html>








