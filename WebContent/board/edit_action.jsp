<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int no = Integer.parseInt(request.getParameter("no"));

	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String content = request.getParameter("content");
	
	pwd = DigestUtils.sha512Hex(pwd);
	
	StringBuffer sql = new StringBuffer();
	sql.append("UPDATE board SET title=?, name=?, pwd=?, content=? WHERE no=?");
	
	Connection conn = null;
	PreparedStatement ps = null;
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
		ps = conn.prepareStatement(sql.toString());
		ps.setString(1, title);
		ps.setString(2, name);
		ps.setString(3, pwd);
		ps.setString(4, content);
		ps.setInt(5, no);
		
		ps.executeUpdate();
		
		response.sendRedirect("list.jsp");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(ps != null) try{ ps.close(); } catch(Exception e){};
		if(conn != null) try{ conn.close(); } catch(Exception e){};
	}
%>    

<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>