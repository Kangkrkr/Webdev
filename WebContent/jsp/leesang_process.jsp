<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, h1 {
	display: table; margin-left: auto; margin-right: auto;
}
</style>
</head>
<body>
<% 
		int child = -1;
		
		try{
			child = Integer.parseInt(request.getParameter("child"));
			
			for(int i=1; i<=child; i++){
%>
			<p>제<%=i %>의 아해가 무섭다고 그러오.</p>
<%
			}
%>
			<p>(<%=child %>인의 아해는 무서운 아해와 무서워하는 아해와 그렇게 뿐이 모였소.)</p>
			<p>(다른 사정은 없는것이 차라리 나았소.)</p>
			<p>재원아 열심히 해라</p>
<%
		}catch(Exception e){
%>	
			먼저 폼을 실행시켜주십시오.<br/>
			<input type="button" onclick="location.href='leesang.jsp'" value="이동"/>
<%
		}
%>
</body>
</html>