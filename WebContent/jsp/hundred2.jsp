<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int sum = 0;
	for(int i=1; i<=1000; i++){
		if(i % 3 == 0){
			sum += i;
		}
	}
	
	out.println(sum);
%>

</body>
</html>