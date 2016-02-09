package servlet.hello;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonalInfoServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		// 동일한 키에 여러값이 들어갈 수도 있기 때문에
		// key는 String, value는 String[] 타입의 Map으로 선언한다.
		Map<String, String[]> map = request.getParameterMap();
		
		for(String key : map.keySet()){
			String[] array = map.get(key);
			
			for(int i=0; i<array.length; i++){
				out.println(key+" : "+array[i]);
			}
		}
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		if (gender.equals("male"))
			gender = "남";
		else
			gender = "여";
		String iNotice = request.getParameter("inotice");
		String clNotice = request.getParameter("cnotice");
		String dNotice = request.getParameter("dnotice");
		String job = request.getParameter("job");
		
		out.println("<HTML>");
		out.println("<HEAD><TITLE>개인 정보 입력 - 결과 화면</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<H2>개인 정보 입력</H2>");
		out.printf("이름: %s <BR>", name);
		out.printf("아이디: %s <BR>", id);
		out.printf("암호: %s <BR>", password);
		out.printf("성별: %s <BR>", gender);
		out.printf("공지 메일: %s <BR>", noticeToHangul(iNotice));
		out.printf("광고 메일: %s <BR>", noticeToHangul(clNotice));
		out.printf("배송 확인 메일: %s <BR>", noticeToHangul(dNotice));
		out.printf("직업: %s <BR>", job);
		out.println("</BODY>");
		out.println("</HTML>");
	}

	private String noticeToHangul(String notice) {
		if (notice == null)
			return "받지 않음";
		else if (notice.equals("on"))
			return "받음";
		else
			return notice;
	}

}
