<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String appPath = application.getContextPath();
   String absolutePath = application.getRealPath("/jsp2/application.jsp");
%>
appPath : <%=appPath %><br/>
absolutePath : <%=absolutePath %><br/> <!-- 하드디스크내에 경로 알려줌 -->
</body>
</html>