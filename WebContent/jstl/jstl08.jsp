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
	map1.put("no", 108);
	map1.put("title", "날아라 병아리");
	map1.put("name", "신해철");
	map1.put("count", 100);
	list.add(map1);
	
	Map<String, Object> map2 = new HashMap<String, Object>();
	map2.put("no", 107);
	map2.put("title", "그대에게");
	map2.put("name", "무한궤도");
	map2.put("count", 200);
	list.add(map2);
	
	Map<String, Object> map3 = new HashMap<String, Object>();
	map3.put("no", 105);
	map3.put("title", "기도");
	map3.put("name", "노댄스");
	map3.put("count", 300);
	list.add(map3);
	
	Map<String, Object> map4 = new HashMap<String, Object>();
	map4.put("no", 103);
	map4.put("title", "인형의기사");
	map4.put("name", "넥스트");
	map4.put("count", 400);
	list.add(map4);
	
	Map<String, Object> map5 = new HashMap<String, Object>();
	map5.put("no", 101);
	map5.put("title", "난알아요");
	map5.put("name", "서태지");
	map5.put("count", 500);
	list.add(map5);
	
	// 현재 글번호 마지막은 108번
	long recordCount = 83;	// 게시물 총 수
	long pageSize = 5;		// 페이지당 게시물 출력 수
	long pg = 2;			// 현재 2페이지
%>

<c:set var="list" value="<%=list %>"/>
<c:set var="recordCount" value="<%=recordCount%>"/>
<c:set var="pageSize" value="<%=pageSize%>"/>
<c:set var="pg" value="<%=pg%>"/>

<table border="1">
	<caption>게시판 리스트</caption>
	<tr align="right"><td>총 레코드의 갯수 : ${recordCount}</td></tr>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>이름</th>
		<th>조회수</th>
	</tr>
	<!-- JSTL을 사용한 루프문의 사용 -->
	<!-- begin, end 를 지정하지 않아도 list의 size 만큼 루프가 돈다. -->
	<c:forEach items="${list}" var="vo" step="1" varStatus="idx">
		<tr>
			<td>${(recordCount - idx.index) - ((pg - 1) * pageSize)}</td>
			<td>${vo.title}</td>
			<td>${vo.name}</td>
			<td>${vo.count}</td>
		</tr>
	</c:forEach>
	
</table>

<h1>현재 ${pg} 페이지</h1>
</body>
</html>