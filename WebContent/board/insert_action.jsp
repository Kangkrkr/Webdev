<<<<<<< HEAD
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
=======
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String content = request.getParameter("content");
	
	pwd = DigestUtils.sha512Hex(pwd);
	
	StringBuffer sql = new StringBuffer();
	sql.append(" INSERT INTO board(no, title, name, content, pwd)");
	sql.append(" VALUES(seq_board.nextval, ?, ?, ?, ?)");
	
	boolean result = false;
	
	Connection conn = null;
	PreparedStatement ps = null;
	
	try{
		// jdbc:oracle:thin:@localhost:1521:xe
		Class.forName("oracle.jdbc.OracleDriver");
	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
		ps = conn.prepareStatement(sql.toString());
		ps.setString(1, title);
		ps.setString(2, name);
		ps.setString(3, content);
		ps.setString(4, pwd);
		
		ps.executeUpdate();
		
		result = true;
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(ps != null) try{ ps.close(); } catch(Exception e){};
		if(conn != null) try{ conn.close(); } catch(Exception e){};
	}
>>>>>>> 7d8a622c853c91ea9ba03e2065fa2e8e89064a94
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