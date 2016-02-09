package servlet.hello;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WinnerServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int arr[] = new int[5];
		for(int i=0; i<arr.length; i++){
			arr[i] = (int)(Math.random() * 1000) + 1;
		}
		
		// 요청측에 키와 값을 담아 RequestDispather를 통해
		// 보냄과 동시에 특정 jsp파일을 실행시킨다.
		request.setAttribute("ARR", arr);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/winners.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
