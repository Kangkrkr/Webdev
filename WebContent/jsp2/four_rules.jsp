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
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	request.setAttribute("sum", (num1 + num2));
	request.setAttribute("minus", (num1 - num2));
	request.setAttribute("multiple", (num1 * num2));
	request.setAttribute("divide", (num1 / num2));
	
	RequestDispatcher rd = request.getRequestDispatcher("four_rules_result.jsp");
	rd.forward(request, response);
%>
</body>
</html>