<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="session_add.jsp">세션 추가</a>
<hr/>

<%

	if(session.getAttribute("user_id") != null){ 
		
		out.println("user id : "+session.getAttribute("user_id"));
	
	}else{
		out.println("user id가 세션에 저장되어있지 않습니다.");
	} 
%>
<br/>
<%

	if(session.getAttribute("level") != null){ 
		
		out.println("level : "+session.getAttribute("level"));
	
	}else{
		out.println("level이 세션에 저장되어있지 않습니다.");
	} 
%>
<br/>
<%

	if(session.getAttribute("human") != null){ 
		
		out.println(session.getAttribute("human"));
	
	}else{
		out.println("human이 세션에 저장되어있지 않습니다.");
	} 
%>

</body>
</html>