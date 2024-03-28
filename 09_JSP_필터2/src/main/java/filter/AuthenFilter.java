package filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter(description = "AuthenFilter", urlPatterns = {"/filter01_pro.jsp"})
public class AuthenFilter extends HttpFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("AuthenFilter 초기화 - init()...");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 필터 기능 작성
		System.out.println("AuthenFilter 필터 - doFilter()...");
		
		// name 파라미터를 필터링
		String name = request.getParameter("name");
		
		// name 이 null 이거나 빈 문자열이면 필터에서 걸러준다
		if( name == null || name.equals("") ) {
			// name = "이름없음";
//			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			String msg = "name 이 null 입니다.";
			writer.print(msg);
			return;
		}
		
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		System.out.println("AuthenFilter 해제 - destroy()...");
	}

}
