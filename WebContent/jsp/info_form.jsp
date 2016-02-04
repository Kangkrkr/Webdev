<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>개인 정보 입력 화면</title>
<style type="text/css">
@import url("../css/css03.css");
</style>
</head>
<body>
<h2>개인정보입력</h2>
<form action="../info_result" method='get'>
<table>
	<tr>
		<td>이름 : <input type='text' class='inp' required="required" name='name' autofocus="autofocus"></td>
	</tr>
	<tr>
		<td>아이디 : <input type='text' class='inp' required="required" name='id'></td>
	</tr>
	<tr>
		<td>패스워드 : <input type='password' class='inp' required="required" name='password'></td>
	</tr>
	<tr>
		<td>
			성별 :
			남<input type='radio' name='gender' value='male'>
			여<input type='radio' name='gender' value='female'>
		</td>
	</tr>
	<tr>
		<td>
			메일 수신 여부 :
			공지 메일<input type="checkbox" name='inotice'>
			광고 메일<input type="checkbox" name='cnotice'>
			배송 확인 메일<input type="checkbox" name='dnotice'>
		</td>
	</tr>
	<tr>
		<td>
			직업 :
			<select name='job'>
				<option>회사원</option>
				<option>학생</option>
				<option>기타</option>
			</select><br/><br/>
		</td>
	</tr>
	<tr>
		<td>
			<input type='reset' value='취소'>
			<input type='submit' value='확인'>
		</td>
	</tr>
</table>
</form>
</body>
</html>