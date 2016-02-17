<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	Map<String, Object> map1 = new HashMap<String, Object>();
	map1.put("title", "날아라 병아리");
	map1.put("name", "신해철");
	map1.put("count", 100);
	list.add(map1);
	
	Map<String, Object> map2 = new HashMap<String, Object>();
	map2.put("title", "그대에게");
	map2.put("name", "무한궤도");
	map2.put("count", 200);
	list.add(map2);
	
	Map<String, Object> map3 = new HashMap<String, Object>();
	map3.put("title", "기도");
	map3.put("name", "노댄스");
	map3.put("count", 300);
	list.add(map3);
%>

<c:set var="list" value="<%=list %>"/>
<table border="1">
	<caption>게시판 리스트</caption>
	<tr>
		<th>제목</th>
		<th>이름</th>
		<th>조회수</th>
	</tr>
	
	<!-- JSTL을 사용한 루프문의 사용 -->
	<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.title}</td>
			<td>${vo.name}</td>
			<td>${vo.count}</td>
		</tr>
	</c:forEach>
	
</table>
</body>
</html>