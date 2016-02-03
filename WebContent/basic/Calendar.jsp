<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int year = 2016;
		int month = 2;

		Calendar cal = Calendar.getInstance(); //현재시점을 시작점으로 만들어준다
		//		System.out.println(Calendar.getInstance());//현재시점의 시간이 만들어진다

		cal.set(year, month - 1, 1); //컴퓨터는 1월을 0월로 인식~ 12월을 11월로 내부입력되어있다
										//뒤에 나와 있는 1은 1일을 1일의 자리에다가 셋팅을 한다?
		int week = cal.get(Calendar.DAY_OF_WEEK);//년도와 달을 가지고 1일이 몇 번째 날인지를 출력
		int endDay = cal.getActualMaximum(Calendar.DATE);//년도와 달을 가지고 마지막날을 출력
		/*		System.out.println("1일이 무슨요일? " + week); 
				System.out.println("마지막날 ? " + week); */

		/*		System.out.println(year +"년"+month+"월");
				System.out.println("---------------------");
				System.out.println("일 월 화 수 목 금 토"); 
				System.out.println("---------------------");*/
	%>
	<table border="1">
		<caption><%=year%>년
			<%=month%>월
		</caption>
		<tr>
			<td>일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td>토</td>
		</tr>
		<tr>
			<%
				for (int sp = 1; sp < week; sp++) {
					out.println("<td></td>");
				}
				for (int d = 1, w = week; d <= endDay; d++, w++) {
					out.println("<td>" + d + "</td>");
					if (w % 7 == 0)
						out.println("</tr> <tr>");
				}
			%>
		</tr>
	</table>
</body>
</html>