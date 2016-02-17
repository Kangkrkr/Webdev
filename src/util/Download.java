package util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Download extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		
		String filename = request.getParameter("filename");
		response.setContentType("application/octet-stream");
		response.setHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(filename, "UTF-8"));
		
		byte[] data = new byte[1024 * 100];
		
		InputStream is = new BufferedInputStream(new FileInputStream(upload + "/" + filename));
		
		OutputStream os = new BufferedOutputStream(response.getOutputStream());
		
		while(is.read(data) != -1){
			os.write(data);
		}
		
		// os.flush 를 수행하면 버퍼에 남아있던 데이터가 모두 보내진다.
		if(os != null) try{os.flush(); os.close();} catch(Exception e){}
		if(is != null) try{is.close();} catch(Exception e){}
	}
}
