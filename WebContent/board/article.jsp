<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<f:bundle basename="i18n/test/board">
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));

	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	BoardVO boardVO = boardDAO.getArticle(no);
%>
	<table border="1">
		<tr>
			<th><f:message key="edit.title"/></th>
			<td><%=boardVO.getNo()%></td>
		</tr>
		<tr>
			<th><f:message key="edit.name"/></th>
			<td><%=boardVO.getName()%></td>
		</tr>
		<tr>
			<th><f:message key="edit.readcount"/></th>
			<td><%=boardVO.getReadcount()%>
		</tr>
		<tr>
			<th><f:message key="edit.content"/></th>
			<td><%=boardVO.getContent()%></td>
		</tr>
		<tr>
			<th><f:message key="edit.regdate"/></th>
			<td><%=boardVO.getRegdate()%></td>
		</tr>
	</table>
	<input type="button" value="<f:message key="edit.toList"/>" onclick="location.href='list.jsp'" />
</body>
</html>
</f:bundle>