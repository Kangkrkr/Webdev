<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function valid(){
	// 조금 더 세밀하게 잡고 싶다면 === 연산자를 사용하는것이 좋다.
	// 데이터 타입의 비교까지 하게 된다.
	if(document.getElementById('number1').value == ''){
		document.getElementById('number1').focus();
		return;
	}
	
	if(document.getElementById('number2').value == ''){
		document.getElementById('number2').focus();
		return;
	}
	
	document.myform.submit();
}

</script>
</head>
<body>
<form action="add_process.jsp" method="get" name='myform'>
첫번째 수 : <input type="text" name="number1" id="number1"/><br/>
두번째 수 : <input type="text" name="number2" id="number2"/><br/> 
<input type="button" value="더하기" onclick="valid()"/>
</form>
</body>
</html>