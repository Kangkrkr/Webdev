<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('../css/pc.css')
</style>
</head>
<body>

<x:parse var="xmldata">
<basketTeam>
	<basketMember>
		<name>채치수</name>
		<age>18</age>
		<position>센터</position>
		<phone>010-1111-1111</phone>
	</basketMember>
	<basketMember>
		<name>강백호</name>
		<age>16</age>
		<position>파워포워드</position>
		<phone>010-1111-1112</phone>
	</basketMember>
	<basketMember>
		<name>서태웅</name>
		<age>16</age>
		<position>스몰포워드</position>
		<phone>010-1111-1113</phone>
	</basketMember>
	<basketMember>
		<name>송태섭</name>
		<age>17</age>
		<position>포인터가드</position>
		<phone>010-1111-1114</phone>
	</basketMember>
	<basketMember>
		<name>정대만</name>
		<age>18</age>
		<position>스윙맨</position>
		<phone>010-1111-1115</phone>
	</basketMember>
	<basketMember>
		<name>강승윤</name>
		<age>26</age>
		<position>매니저</position>
		<phone>010-1111-1116</phone>
	</basketMember>
</basketTeam>
</x:parse>

<table border="1">
	<caption>북산 농구부</caption>
<tr>
	<th>이름</th>
	<th>나이</th>
	<th>포지션</th>
	<th>전화</th>
</tr>
<x:forEach select="$xmldata/basketTeam/basketMember">
<tr>
	<td><x:out select="name"/></td>
	<td>
		<x:choose>
			<x:when select="position = '매니저'">
				알거없음
			</x:when>
			<x:otherwise>
				<x:out select="./age"/>
			</x:otherwise>
		</x:choose>
	</td>
	<td><x:out select="position"/></td>
	<td><x:out select="phone"/></td>
</tr>
</x:forEach>
</table>
</body>
</html>