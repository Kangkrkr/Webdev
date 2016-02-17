<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 반드시 파일업로드 시에는 메소드 방식에는 post를 사용해야하며 enctype은 다음과 같이 해야한다. -->
<form action="upload_action.jsp" method="post" enctype="multipart/form-data">

	<!-- 반드시 file 타입의 input 태그에 name 을 지정해 주어야 한다. -->
	<input type="file" name="filename"/>
	<input type="submit" value="제출"/>
</form>
</body>
</html>