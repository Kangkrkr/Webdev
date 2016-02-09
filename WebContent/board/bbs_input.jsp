<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>게시판 글쓰기 - 입력화면</title>
</head>
<body>
<form action="bbs_post.jsp" method="post">
	<h2>글쓰기</h2>
	이름 : <input type="text" name="name"/><br/>
	제목 : <input type="text" name="title"/><br/>
<textarea rows="5" cols="30" name="content"></textarea>	
<input type="submit" value="저장"/>
</form>
</body>
</html>