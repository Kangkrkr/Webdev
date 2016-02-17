<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 

<%
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	//user_pw = DigestUtils.sha512Hex(user_pw);
	
	String user_name =null;
	
	//쿠키 저장 관련
	int imsi=0;
	if(request.getParameter("checkid")==null){
		imsi=0;
	} else{
		imsi=Integer.parseInt(request.getParameter("checkid"));
	}
	
	if(imsi==1){
		Cookie c1 = new Cookie("user_id", URLEncoder.encode(user_id, "UTF-8"));
		c1.setMaxAge(60*60*24*30);//한달
		response.addCookie(c1);
	} else if(imsi==0){
		Cookie c1 = new Cookie("user_id", "");
		c1.setMaxAge(0);
		response.addCookie(c1);
	}

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	StringBuffer sql = new StringBuffer();
	sql.append(" select user_id, user_name");
	sql.append(" from member");
	sql.append(" where user_id=? and user_pw=?");
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","n1","n1");
		ps=conn.prepareStatement(sql.toString());
		ps.setString(1, user_id);
		ps.setString(2, user_pw);
		
		rs = ps.executeQuery();
		
		if(rs.next()){
			user_name=rs.getString("user_name");
			
			session.setAttribute("user_id", user_id);
			session.setAttribute("user_name", user_name);
			response.sendRedirect("main.jsp");
		} else{
			out.println("<script>");
			out.println("alert('id혹은 pw가 틀립니다.');");
			out.println("location.href='login.jsp';");
			out.println("</script>");
			return;
		}
		
	} catch(Exception e){
		e.printStackTrace();
		out.println("<script>");
		out.println("alert('시스템에 문제가 있습니다. 로그인 화면으로 돌아갑니다.');");
		out.println("location.href='login.jsp';");
		out.println("</script>");
		return;
	} finally{
		if(rs!=null) try{rs.close();} catch(Exception e){}
		if(ps!=null) try{ps.close();} catch(Exception e){}
		if(conn!=null) try{conn.close();} catch(Exception e){}	
	}
	
%>


</body>
</html>