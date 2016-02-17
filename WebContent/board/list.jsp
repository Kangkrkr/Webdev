<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>승윤이네 게시판</title>
</head>
<body style="margin: 5%">

<%
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	List<BoardVO> list = boardDAO.getArticleList();
%>
<h1 style="margin-left: 10px; margin-bottom: 50px">게시물 리스트</h1>
<table class="table table-bordered">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>이름</th>
			<!-- <th>내용</th> -->
			<th>날짜</th>
			<!-- <th>조회수</th> -->
			<th colspan="2">
				<div class="btn btn-default btn-lg btn-block" onclick="location.href='insert.jsp'">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true">글쓰기</span>
				</div>
			</th>
		</tr>
<%
		// List에 담아 두었던 VO 객체들을 꺼내와 화면에 표시한다.
		for(BoardVO boardVO : list){%>
			<tr>
			<td><%=boardVO.getNo()%></td>
			<td><a href="article.jsp?no=<%=boardVO.getNo()%>"><%=boardVO.getTitle()%></a></td>
			<td><%=boardVO.getName()%></td>
			<!-- <td><%=boardVO.getContent()%></td> -->
			<td><%=boardVO.getRegdate()%></td>
			<!-- <td><%=boardVO.getReadcount()%></td> -->
			<td>
				<div class="btn btn-default btn-lg btn-block" onclick="isValidate('<%=boardVO.getNo()%>', 'edit')" id="edit_btn">
					<span>수정</span>
				</div>
			</td>
			<td>
				<div class="btn btn-default btn-lg btn-block" onclick="isValidate('<%=boardVO.getNo()%>', 'delete')" id="delete_btn">
					<span>삭제</span>
				</div>
			</td>
		</tr>			
<%		} %>
</table>
<nav>
  <ul class="pagination">
    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <!-- 텍스트.. -->
  </ul>
</nav>

<script type="text/javascript">

function isValidate(no, what) {
	
	var pwd = prompt("비밀번호를 입력하세요");
	
	$.ajax({
        type: "post",
        url : "confirm.jsp",
        data: {
        	no : no,
        	pwd : pwd,
        	what : what
        },
        success: whenSuccess,
        error: whenError
 	});
}

function whenSuccess(resdata){
	var json = JSON.parse(resdata);
	
	if(json["result"] == "success"){
		if(json["what"] == "edit"){
			location.href = "edit.jsp?no="+json["no"];
		}else if(json["what"] == "delete"){
			location.href = "delete_action.jsp?no="+json["no"];
		}
	}else{
		alert("비밀번호 확인 실패.");
	}
}

function whenError(resdata){
	console.log("에러 발생");
}

</script>
</body>
</html>