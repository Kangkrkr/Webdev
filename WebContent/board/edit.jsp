<%@page import="board.model.BoardVO"%>
<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charet="UTF-8">
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
<%
	int no = Integer.parseInt(request.getParameter("no"));
	
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	BoardVO boardVO = boardDAO.getArticle(no);
%>

<!-- input태그의 조작을 막기 위해 input태그의 속성으로 readonly="readonly"를 주거나 type을 hidden으로 준다 -->
<body style="display: table; margin-left: auto; margin-top: 50px; margin-right: auto;">
	<h1>게시글 수정 - 다음을 입력해주세요.</h1>
	<form action="edit_action.jsp?no=<%=boardVO.getNo() %>" method="post" style="margin-top: 50px;">
		<div>
			<label for="title">제목</label>
			<div>
				<input type="text" class="form-control" id="title" style="width: 550px; margin-bottom: 20px"
					 name="title" value="<%=boardVO.getTitle() %>" required="required">
			</div>
		</div>
		<div>
			<label for="name">작성자</label>
			<div>
				<input type="text" class="form-control" id="name" style="margin-bottom: 20px"
					name="name" value="<%=boardVO.getName() %>" required="required">
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
					name="content" required="required"><%=boardVO.getContent() %></textarea>
			</div>
		</div>
		<div>
			<input type="submit" class="btn btn-default btn-lg btn-block" value="작성완료"/>
		</div>
	</form>
</body>
</html>