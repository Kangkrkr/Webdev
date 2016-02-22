<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- JSTL을 사용한 국제화 작업하기. f:bundle 태그로 문서를 감싼다. -->
<f:setLocale value="ko_KR"/>

<f:bundle basename="i18n/test/lang">
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<f:message key="name"/> : <input type="text" name="name"/><br/>
<hr/>
<f:message key="guest" var="guest"/>
<h1>
	<f:message key="greeting">
		<f:param value="${guest}"/>
	</f:message>
</h1>	
	: <input type="text" name="name"/>
</body>
</html>
</f:bundle>