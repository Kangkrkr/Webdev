<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>글쓰기</h2>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	String result = null;
	
	Date date = new Date();
	long time = date.getTime();
	String filename = time + ".txt";
	
	PrintWriter writer = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/bbs/"+filename);
		System.out.println(filePath);
		writer = new PrintWriter(filePath);
		writer.printf("제목 : %s %n", title);
		writer.printf("글쓴이: %s %n", name);
		writer.println(content);
		out.println("저장되었습니다.");
		
		result = "success";
	}catch(IOException e){
		result = "fail";
	}finally{
		try{
			writer.close();
			
			response.sendRedirect("bbs_post_result.jsp?result="+result);
		}catch(Exception e){}
	}
%>
</body>
</html>