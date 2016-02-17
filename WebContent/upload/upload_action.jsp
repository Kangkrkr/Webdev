<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 실제 업로드된 파일의 수신을 담당하는 부분.
	String upload = "C:/dev/upload";
	int size = 1024 * 1024 * 20;
	
	String filename = null;
	String file = null;
	
	boolean isImage = false;
	
	try{
		MultipartRequest multi = new MultipartRequest(request, upload, size, "UTF-8", new DefaultFileRenamePolicy());
		
		// 멀티파트에서 파일이름을 가져오는것은 여러 개의 파일 이름이 있을 수 있으므로 반환 타입은 Enumeration이다.
		Enumeration<String> fileNames = multi.getFileNames();
		file = fileNames.nextElement();
		filename = multi.getFilesystemName(file);
		
		// 파일의 메타데이터를 제공해주는 MultipartRequest의 메소드 : getContentType(file)
		// application/pdf 이나 image/jpeg 같은 문자열로 메타데이터가 반환된다.
		isImage = multi.getContentType(file).substring(0, 6).toLowerCase().equals("image/");
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 파라미터에 공백이 존재할 시 제대로 된 출력이 이루어지지 않고 에러가 발생하는 경우가 있다.
	// 그러한 것을 사전에 방지하기 위해 URLEncoder.encode() 메소드를 사용하여 공백을 포장하도록 한다. (공백이 '+' 문자로 바뀜)
	response.sendRedirect("result.jsp?isImage="+isImage+"&filename="+URLEncoder.encode(filename));
%>

<%=filename %>
</body>
</html>