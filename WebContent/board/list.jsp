<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<f:bundle basename="i18n/test/board">
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title><f:message key="list.title"/></title>
</head>
<body style="margin: 5%">

<%
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	StringBuffer sql = new StringBuffer();
	sql.append(" SELECT no, title, name, content, regdate, readcount, pwd ");
	sql.append(" FROM board");
	sql.append(" ORDER BY no DESC");
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
		ps = conn.prepareStatement(sql.toString());
		
		rs = ps.executeQuery();
%>
<h1 style="margin-left: 10px; margin-bottom: 50px"><f:message key="list.action"/></h1>
<table class="table table-bordered">
		<tr>
			<th><f:message key="list.no"/></th>
			<th><f:message key="list.title"/></th>
			<th><f:message key="list.name"/></th>
			<!-- <th><f:message key="list.content"/></th> -->
			<th><f:message key="list.regdate"/></th>
			<th><f:message key="list.readcount"/></th>
			<th colspan="2">
				<div class="btn btn-default btn-lg btn-block" onclick="location.href='insert.jsp'">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"><f:message key="list.wirte"/></span>
				</div>
			</th>
		</tr>
<%		
		while(rs.next()){ %>
		<tr>
			<td><%=rs.getLong("no")%></td>
			<td><a href="article.jsp?no=<%=rs.getLong("no")%>"><%=rs.getString("title")%></a></td>
			<td><%=rs.getString("name")%></td>
			<!-- <td><%=rs.getString("content")%></td> -->
			<td><%=rs.getString("regdate")%></td>
			<td><%=rs.getInt("readcount")%></td>
			<td>
				<div class="btn btn-default btn-lg btn-block" onclick="isValidate('<%=rs.getLong("no")%>', 'edit')" id="edit_btn">
					<span><f:message key="list.edit"/></span>
				</div>
			</td>
			<td>
				<div class="btn btn-default btn-lg btn-block" onclick="isValidate('<%=rs.getLong("no")%>', 'delete')" id="delete_btn">
					<span><f:message key="list.delete"/></span>
				</div>
			</td>
		</tr>
<%	} 
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs != null) try{ rs.close(); } catch(Exception e){};
		if(ps != null) try{ ps.close(); } catch(Exception e){};
		if(conn != null) try{ conn.close(); } catch(Exception e){};
	}
%>
</table>
<nav>
  <ul class="pagination">
    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    ...
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
</f:bundle>