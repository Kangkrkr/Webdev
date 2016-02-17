<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardVO" class="board.model.BoardVO"/>
<jsp:setProperty property="*" name="boardVO"/>
    
<%
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	boolean result = boardDAO.insertArticle(boardVO);
%>    

<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
<% if(result){ 
		response.sendRedirect("list.jsp");
   }else{ %>
		alert("글의 등록에 실패.");
		location.href='javascript:history.back();';
<% }%>
</script>
</head>
<body>

</body>
</html>