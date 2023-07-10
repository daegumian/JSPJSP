package com.daegumian.util.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//세션검사를 하기위한 필터
//<--ex. String[] arr = {};// 디폴트 값이 url pattern메서드임, 그래서 메서드명 생략 가능.
@WebFilter( {"/user/user_mypage.user", //마이페이지
			 "/user/user_modify.user", //정보수정페이지
			 "/board/board_write.board",//글등록페이지
			 "/board/registForm.board"})//글등록요청
public class UserAuthFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		//ServletRequest는 HttpServletRequest의 부모타입이다.
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		
		//세션을 얻음
		HttpSession session = req.getSession();
		//회원이 로그인 할 때 저장한 인증값
		String user_id = (String)session.getAttribute("user_id");
		//로그인이 안됐다.
		if(user_id == null) {
			//절대경로
			String path = req.getContextPath() + "/user/user_login.user";
//			res.sendRedirect(path);
			res.setContentType("text/html; charset = utf-8;");
			PrintWriter out = res.getWriter();
			out.println("<script>");
			out.println("alert('로그인이 필요한 서비스입니다');");
			out.println("location.href='"+path+"';");
			out.println("</script>");
			
			
			
			return; //필터 종료를 시켜줘야한다. 종료하지 않고 나가면 필터를 실행->컨트롤러로 가게됨 리다이렉트는 두 번 실행 될 수 없으니 오류가 남.
		}
		
		
		//다음 코드를 실행함 or 필터를 실행함
		chain.doFilter(request, response);
		
	}

}
