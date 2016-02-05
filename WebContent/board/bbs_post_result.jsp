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
	String result = request.getParameter("result");

	if(result.equals("success")){
		out.println("저장되었습니다.");
	}else{
		out.println("파일 저장에 실패하였습니다.");
	}
%>
</body>
</html>