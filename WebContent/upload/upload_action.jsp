<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.media.jai.JAI"%>
<%@page import="javax.media.jai.RenderedOp"%>
<%@page import="java.awt.image.renderable.ParameterBlock"%>
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
	String upload = "C:/dev/uploads";
	
	File uploadPath = new File(upload);
	
	if(!uploadPath.exists()){
		if(uploadPath.mkdirs()){
			System.out.println("업로드 경로의 생성 성공.");
			System.out.println(uploadPath.getPath());
		}else{
			System.out.println("업로드 경로의 생성 실패.");
		}
	}

	int size = 1024 * 1024 * 20;
	
	String filename = null;
	String file = null;
	
	boolean isImage = false;
	String ext = null;
	
	try{
		MultipartRequest multi = new MultipartRequest(request, upload, size, "UTF-8", new DefaultFileRenamePolicy());
		
		// 멀티파트에서 파일이름을 가져오는것은 여러 개의 파일 이름이 있을 수 있으므로 반환 타입은 Enumeration이다.
		Enumeration<String> fileNames = multi.getFileNames();
		file = fileNames.nextElement();
		filename = multi.getFilesystemName(file);
		
		// 파일의 메타데이터를 제공해주는 MultipartRequest의 메소드 : getContentType(file)
		// application/pdf 이나 image/jpeg 같은 문자열로 메타데이터가 반환된다.
		isImage = multi.getContentType(file).substring(0, 6).toLowerCase().equals("image/");
		ext = multi.getContentType(file).substring(6).toLowerCase();
	}catch(Exception e){
		e.printStackTrace();
	}
	
	try{
		if(isImage){
			ParameterBlock pb = new ParameterBlock();
			pb.add(upload + "/" + filename);
			RenderedOp rOp = JAI.create("fileload", pb);	// 파일(이미지)을 불러온다.
			
			BufferedImage bi = rOp.getAsBufferedImage();	// 작업을 하기 위한 원본 데이터의 저장.
			BufferedImage thumb = new BufferedImage(100, 100, BufferedImage.TYPE_INT_RGB); 	// 썸네일 이미지를 위한 작업(아직 그려지지않은 상태).
			
			Graphics2D g = thumb.createGraphics();			// thumb를 위한 캔버스를 생성.
			g.drawImage(bi, 0, 0, 100, 100, null);			// 캔버스에 원본그림 bi를 그린다.
			
			File f = new File(upload +"/thumb_" + filename);
			
			ImageIO.write(thumb, ext, f);					// 파일에 이미지 thumb를 write한다.
		}
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