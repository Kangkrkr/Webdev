package servlet.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/* 다음은 비효율적이고 노가다적인 작업으로 HTML 코드를 생성하는 작업 */
/* 그리하여 탄생한 기술이 JSP 이다 */ 
public class HelloServlet3 extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("doGet 수행 중");
      response.setContentType("text/html;charset=UTF-8");
      
      PrintWriter out = response.getWriter();
      out.println("<!DOCTYPE html >");
      out.println("<html lang=\"ko\">");
      out.println("<head>");
      out.println("<meta charset=\"UTF-8\">");
      out.println("<title>Insert title here</title>");
      out.println("<style type=\"text/css\">");
      out.println("body {");
      out.println("   margin: 0px;");
      out.println("}");
      out.println("</style>");
      out.println("</head>");
      out.println("<body>");
      out.println("<form action=\"./hello3\" method=\"post\" >");
      out.println("<img src=\"css/img/whoami1.png\" /><br/>");
      out.println("이름 : <input type=\"text\" name=\"name\" autofocus=\"autofocus\" />");
      out.println("<input type=\"submit\" value=\"say\" />");
      out.println("</form>");
      out.println("</body>");
      out.println("</html>");
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("doPost 수행 중");
      response.setContentType("text/html;charset=UTF-8");
      
      String name = request.getParameter("name");
      
      PrintWriter out = response.getWriter();
      out.println("<!DOCTYPE html>");
      out.println("<html lang=\"ko\">");
      out.println("<head>");
      out.println("<meta charset=\"UTF-8\">");
      out.println("<title>Insert title here</title>");
      out.println("<style type=\"text/css\">");
      out.println("body {");
      out.println("	margin: 0px;");
      out.println("}");
      out.println(".whoami{");
      out.println("	position: absolute;");
      out.println("	z-index: 0;");
      out.println("}");
      out.println("#iam {");
      out.println("	position: absolute;");
      out.println("	z-index: 0;");
      out.println("	top:70px;");
      out.println("	left:660px;");
      out.println("	font-size: 1.8em;");
      out.println("	forn-weight: bold;");
      out.println("	width: 100px;");
      out.println("}");
      out.println("</style>");
      out.println("</head>");
      out.println("<body>");
      out.println("<img src=\"css/img/whoami2.png\" class=\"whoami\" />");
      out.println("<div id=\"iam\">그래, 난 "+name+".</div>");
      out.println("</body>");
      out.println("</html>");
   }
}