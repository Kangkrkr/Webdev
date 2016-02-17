<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String remember_id = "";
   Cookie[] cookies = request.getCookies();
   for(Cookie c : cookies){
      if(c.getName().equals("remember_id")) remember_id = c.getValue();
   }
%>
<form action="login_action.jsp" method="post">
	<table>
	   <caption>로그인</caption>
	<tr>
	   <th>id</th>
	   <td><input type="text" name="user_id" autofocus="autofocus" required="required" value="<%=remember_id %>"/></td>
	</tr>
	<tr>
	   <th>pw</th>
	   <td><input type="password" name="user_pw" required="required"/></td>
	</tr>
	<tr>   
	   <td colspan="2" align="center">         
	      <input type="checkbox" name="checkid"/> ID 저장
	   </td>
	   
	</tr>
	<tr>   
	   <td colspan="2" align="center">         
	      <input type="submit" value="로그인"/>
	      <input type="button" value="회원가입"/>
	   </td>
	   
	</tr>
	</table>
</form>
</body>
</html>