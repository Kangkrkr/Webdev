<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
	<td>
		<%out.print(shape1());%>
	</td>
	<td>
		<%out.print(shape2());%>
	</td>
</tr>
<tr align="right">
	<td>
		<%out.println(shape3());%>
	</td>
	<td>
		<%out.println(shape4());%>
	</td>
</tr>
</table>
</body>
</html>

<%!
	public String shape1(){
		StringBuffer result = new StringBuffer();
		for(int i=1; i<=5; i++){
			for(int j=1; j<=i; j++){
				result.append('★');
			}
			result.append("<br/>");
		}
		return result.toString();
	}

	public String shape2(){
		StringBuffer result = new StringBuffer();
		for(int i=5; i>=1; i--){
			for(int j=1; j<=i; j++){
				result.append('★');
			}
			result.append("<br/>");
		}
		return result.toString();
	}
	
	public String shape3(){
		StringBuffer result = new StringBuffer();
		for(int i=1; i<=5; i++){
			for(int j=1; j<=i; j++){
				result.append('★');
			}
			result.append("<br/>");
		}
		return result.toString();
	}
	
	public String shape4(){
		StringBuffer result = new StringBuffer();
		for(int i=5; i>=1; i--){
			for(int j=1; j<=i; j++){
				result.append('★');
			}
			result.append("<br/>");
		}
		return result.toString();
	}
%>