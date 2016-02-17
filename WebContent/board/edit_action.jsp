<%@page import="board.model.BoardVO"%>
<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardVO" class="board.model.BoardVO"/>
<jsp:setProperty property="*" name="boardVO"/>

<%
	int no = Integer.parseInt(request.getParameter("no"));

	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	int result = boardDAO.updateArticle(boardVO);

	response.sendRedirect("list.jsp");
%>