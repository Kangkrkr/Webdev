<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
			<th>����</th>
			<td><%=boardVO.getNo()%></td>
		</tr>
		<tr>
			<th>�ۼ���</th>
			<td><%=boardVO.getName()%></td>
		</tr>
		<tr>
			<th>��ȸ��</th>
			<td><%=boardVO.getReadcount()%>
		</tr>
		<tr>
			<th>����</th>
			<td><%=boardVO.getContent()%></td>
		</tr>
		<tr>
			<th>�����</th>
			<td><%=boardVO.getRegdate()%></td>
		</tr>
	</table>
	<input type="button" value="����Ʈ��" onclick="location.href='list.jsp'" />
</body>
</html>