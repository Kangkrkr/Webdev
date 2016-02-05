<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	StringBuffer sql = new StringBuffer();
	sql.append(" SELECT no, title, name, content, regdate, readcount ");
	sql.append(" FROM board");
	sql.append(" ORDER BY no DESC");
	
	try{
		// jdbc:oracle:thin:@localhost:1521:xe
		Class.forName("oracle.jdbc.OracleDriver");
	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
		ps = conn.prepareStatement(sql.toString());
		
		rs = ps.executeQuery();
%>
<table border="1">
		<caption>게시물 리스트</caption>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>이름</th>
			<th>내용</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
<%	while(rs.next()){ %>
		<tr>
			<td><%=rs.getLong("no")%></td>
			<td><%=rs.getString("title")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("content")%></td>
			<td><%=rs.getString("regdate")%></td>
			<td><%=rs.getInt("readcount")%></td>
		</tr>
<%	} 
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs != null) try{ rs.close(); } catch(Exception e){};
		if(ps != null) try{ ps.close(); } catch(Exception e){};
		if(conn != null) try{ conn.close(); } catch(Exception e){};
	}
%>
</table>
</body>
</html>