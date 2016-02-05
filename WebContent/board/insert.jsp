<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert_action.jsp" method="get">
		<table>
			<caption>게시물 글쓰기</caption>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="5" cols="30" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="작성완료" /></td>
			</tr>
		</table>
	</form>
</body>
</html>