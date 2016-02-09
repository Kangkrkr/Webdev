<%@page import="java.sql.DriverManager"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charet="UTF-8">
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	
	StringBuffer sql = new StringBuffer();
	sql.append("select * from board where no=?");
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String title = null;
	String name = null;
	String pwd = null;
	String content = null;
	
	JSONObject obj = new JSONObject();
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
		ps = conn.prepareStatement(sql.toString());
		ps.setInt(1, no);
		
		rs = ps.executeQuery();
		while(rs.next()){
			title = rs.getString("title");
			name = rs.getString("name");
			pwd = rs.getString("pwd");
			content = rs.getString("content");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(ps != null) try{ ps.close(); } catch(Exception e){};
		if(conn != null) try{ conn.close(); } catch(Exception e){};
	}
%>
<body style="display: table; margin-left: auto; margin-top: 50px; margin-right: auto;">
	<h1>게시글 수정 - 다음을 입력해주세요.</h1>
	<form action="edit_action.jsp?no=<%=no %>" method="post" style="margin-top: 50px;">
		<div>
			<label for="title">제목</label>
			<div>
				<input type="text" class="form-control" id="title" style="width: 550px; margin-bottom: 20px"
					 name="title" value="<%=title %>" required="required">
			</div>
		</div>
		<div>
			<label for="name">작성자</label>
			<div>
				<input type="text" class="form-control" id="name" style="margin-bottom: 20px"
					name="name" value="<%=name %>" required="required">
			</div>
		</div>
		<div>
			<label for="pwd">비밀번호</label>
			<div>
				<input type="password" class="form-control" id="pwd" style="margin-bottom: 20px"
					name="pwd" placeholder="비밀번호를 입력하세요." required="required">
			</div>
		</div>
		<div>
			<label for="content">내용</label>
			<div>
				<textarea class="form-control" id="content" style="margin-bottom: 30px"
					name="content" required="required"><%=content %></textarea>
			</div>
		</div>
		<div>
			<input type="submit" class="btn btn-default btn-lg btn-block" value="작성완료"/>
		</div>
	</form>
</body>
</html>