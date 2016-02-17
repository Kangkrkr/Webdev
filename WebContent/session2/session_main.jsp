<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="session_form.jsp">세션 추가</a>
<a href="session_remove.jsp?item=user_id">아이디삭제</a>
<a href="session_remove.jsp?item=user_name">이름삭제</a>
<a href="session_remove.jsp?item=user_level">레벨삭제</a>
<a href="session_invalidate.jsp">전체삭제</a>
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

	if(session.getAttribute("user_name") != null){ 
		
		out.println("user name : "+session.getAttribute("user_name"));
	
	}else{
		out.println("user name이 세션에 저장되어있지 않습니다.");
	} 
%>
<br/>
<%

	if(session.getAttribute("user_level") != null){ 
		
		out.println("level : "+session.getAttribute("user_level"));
	
	}else{
		out.println("level이 세션에 저장되어있지 않습니다.");
	} 
%>
<br/>
</body>
</html>