<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문</title>
</head>
<body>
	<!-- 선언문 -->
	<%! 
		int sum(int a, int b) {
			return a + b;	
		}
	%>
	<!-- HTML 주석 -->
	<%-- JSP 주석 --%>
	<%--
		out : JSP 에서 출력을 하는 내장 객체
			  서블릿에서 출력하는 javax.servlet.jsp.JspWriter 객체가
			  내장 되어 있어서 생성하지 않고 바로 사용할 수 있다.
			  --> 스크립틀릿에서 html을 출력할 때 사용한다.
	 --%>
	<!-- 스크립틀릿  --> 
	<h1><% out.print("a + b = " + sum(2, 3)); %></h1>
	<h1>a + b = 5</h1>
</body>
</html>







