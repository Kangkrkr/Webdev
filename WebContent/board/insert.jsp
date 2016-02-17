<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charet="UTF-8">
<<<<<<< HEAD
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body style="display: table; margin-left: auto; margin-top: 50px; margin-right: auto;">
	<h1>게시글 추가 - 다음을 입력해주세요</h1>
	<form action="insert_action.jsp" method="post" style="margin-top: 50px;">
		<div>
			<label for="title">제목</label>
			<div>
				<input type="text" class="form-control" id="title" style="width: 550px; margin-bottom: 20px"
					 name="title" placeholder="제목을 입력하세요." required="required">
			</div>
		</div>
		<div>
			<label for="name">작성자</label>
			<div>
				<input type="text" class="form-control" id="name" style="margin-bottom: 20px"
					name="name" placeholder="작성자를 입력하세요." required="required">
			</div>
		</div>
		<div>
			<label for="pwd">비밀번호</label>
			<div>
				<input type="password" class="form-control" id="pwd" style="margin-bottom: 20px"
					name="pwd" placeholder="비밀번호를 입력하세요." required="required">
			</div>
		</div>
		<div>
			<label for="content">내용</label>
			<div>
				<textarea class="form-control" id="content" style="margin-bottom: 30px"
					name="content" placeholder="내용을 입력하세요." required="required"></textarea>
			</div>
		</div>
		<div>
			<input type="submit" class="btn btn-default btn-lg btn-block" value="작성완료"/>
		</div>
=======
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
>>>>>>> 7d8a622c853c91ea9ba03e2065fa2e8e89064a94
	</form>
</body>
</html>