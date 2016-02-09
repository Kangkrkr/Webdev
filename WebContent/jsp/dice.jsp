<%@ page import="bean.hello.Dice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>

<H1>주사위는 던져졌다 : <%=Dice.getNumber() %></H1><!-- 익스프레션 -->

<%	
	// 스크립틀릿
	String msg = sayIam("정대만");
	out.println("나는 "+msg+". 포기를 모르는 남자지.");
%>

</body>
</html>

<%!	
	// 메서드 영역 -> 위치는 어디든 상관없지만, 가독성을 고려하여 적절한 위치에 삽입한다.
	// 하지만, 사용을 추천하지는 않는다. 클래스를 만들어 사용하는 것이 낫기 때문이다.
	public String sayIam(String name){
		return name;
	}
%>