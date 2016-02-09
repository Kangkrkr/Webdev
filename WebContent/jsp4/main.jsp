<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@IMPORT url("main.css");
</style>
</head>
<body>
<table>
<tr>
	<td colspan="2" bgcolor="red" height="150">
		<jsp:include page="top.jsp"/>
	</td>
</tr>
<tr>
	<td bgcolor="blue" width="300"><jsp:include page="menu.jsp"/></td>
	<td bgcolor="yellow">
		<jsp:include page="content.jsp">
			<jsp:param value="강승윤" name="name"/>
		</jsp:include>
	</td>
</tr>
</table>
</body>
</html>