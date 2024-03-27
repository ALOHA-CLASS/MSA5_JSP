package sample;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/response")
public class ResponseServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request
						,HttpServletResponse response) throws ServletException, IOException {
		// 응답의 콘텐츠 타입을 HTML로 설정
        response.setContentType("text/html");
        
        int lotto = (int)(Math.random() * 45) + 1;

        // PrintWriter를 사용하여 HTML 응답을 생성
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>My HTML Servlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Hello, World from My HTML Servlet!</h1>");
        out.println("<h3>로또 추천 번호 : 	" + lotto + "</h3>");
        out.println("</body>");
        out.println("</html>");
	}
	
	

	
}
