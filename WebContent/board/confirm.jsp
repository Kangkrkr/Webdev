<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/plain; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String pwd = DigestUtils.sha512Hex(request.getParameter("pwd"));
	String what = request.getParameter("what");

	StringBuffer sql = new StringBuffer();
	sql.append("select * from board where no=? and pwd=?");
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	JSONObject obj = new JSONObject();
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
		ps = conn.prepareStatement(sql.toString());
		ps.setInt(1, no);
		ps.setString(2, pwd);
		
		int rowCount = 0;
		
		rs = ps.executeQuery();
		while(rs.next()){
			rowCount++;
		}
		
		if(rowCount > 0){
			obj.put("result", "success");
			obj.put("no", no);
			obj.put("what", what);
			
			out.println(obj.toJSONString());
		}else{
			obj.put("result", "fail");
			out.println(obj.toJSONString());
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(ps != null) try{ ps.close(); } catch(Exception e){};
		if(conn != null) try{ conn.close(); } catch(Exception e){};
	}
%>