<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="leesang_process.jsp" method="get">
		<select name="child">
<%
			for(int i=1; i<=13; i++){
				
%>
				<option><%=i %></option>
<%
			}
%>
		</select>
		<input type="submit" value="선택">
	</form>
</body>
</html>