<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int sum = (Integer)request.getAttribute("sum");
	int minus = (Integer)request.getAttribute("minus");
	int multiple = (Integer)request.getAttribute("multiple");
	int divide = (Integer)request.getAttribute("divide");
%>

덧셈 결과 : <%=sum %><br/>
뺄셈 결과 : <%=minus %><br/>
곱셈 결과 : <%=multiple %><br/>
나눗셈 결과 : <%=divide %><br/>
</body>
</html>