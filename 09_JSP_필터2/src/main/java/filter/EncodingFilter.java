package filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class EncodingFilter
 */
// web.xml 설정할 filter 등록을 어노테이션으로 대신할 수 있다.
@WebFilter(description = "인코딩 필터", urlPatterns = {"/*"})
public class EncodingFilter extends HttpFilter implements Filter {

	private String encoding;
	
	@Override
	public void init(jakarta.servlet.FilterConfig filterConfig) throws ServletException {
//		encoding = filterConfig.getInitParameter("encoding");
		encoding = "UTF-8";
	}

	@Override
	protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("인코딩 필터 : " + encoding);
		// 요청 응답 시, 문자 인코딩 설정
		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding(encoding);
		
		// 다음 필터로 요청/응답 전달
		chain.doFilter(request, response);
	}

	
   
}




