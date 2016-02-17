<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="cookie_form.jsp">쿠키 추가</a>
<a href="cookie_remove_id.jsp">아이디삭제</a>
<a href="cookie_remove_name.jsp">이름삭제</a>
<a href="cookie_remove_level.jsp">레벨삭제</a>
<a href="cookie_remove_all.jsp">전체삭제</a>
<hr/>

<%
	Cookie cookies[] = request.getCookies();

	if(cookies != null){
		for(Cookie cookie : cookies){
			if(!cookie.getName().equals("JSESSIONID")){
				out.println("쿠키 이름 : "+cookie.getName()+"<br/>");
				out.println("쿠키 값 : "+URLDecoder.decode(cookie.getValue(), "UTF-8")+"<br/>");
				out.println("쿠키 유지 시간 : "+cookie.getMaxAge()+"<br/>");
			}
		}
	}
%>
</body>
</html>