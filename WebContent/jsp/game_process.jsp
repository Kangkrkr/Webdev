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
		int you = -1;
		int com = (int)(Math.random() * 3) + 1;
		
		try{
			you = Integer.parseInt(request.getParameter("you"));
			
			String youStr = (you==1) ? "가위" : (you==2) ? "바위" : "보";
			String comStr = (com==1) ? "가위" : (com==2) ? "바위" : "보";
%>
			<table border="1" style="width: 300px; margin-top: 50px">
				<tr align="center">
					<td>You</td>
					<td rowspan="2">VS</td>
					<td>Com</td>
				</tr>
				<tr style="height: 150px" align="center">
					<td><%=youStr %></td>
					<td><%=comStr %></td>
				</tr>
			</table>
<%
			int whoWin = ((you - com) + 3) % 3;
			String rs = null;
			rs = (whoWin == 1) ? "당신의 승리!" : (whoWin == 0) ? "무승부!" : "컴퓨터의 승리!";
%>
			<h1><%=rs %></h1>
<%
		}catch(Exception e){
%>	
			먼저 가위,바위,보를 선택해주십시오.<br/>
			<input type="button" onclick="location.href='game_form.jsp'" value="이동"/>
<%
		}
%>
</body>
</html>