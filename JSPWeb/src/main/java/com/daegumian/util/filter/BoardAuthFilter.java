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

//본인이 작성한 글만, 수정 삭제를 할 수 있음.
@WebFilter({"/board/board_modify.board",//글 작성 페이지
			"/board/board_update.board"
			})

public class BoardAuthFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		//한글처리
		request.setCharacterEncoding("utf-8");
		
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		
		//작성자를 구함
		String writer = req.getParameter("writer");
		
		//세션에 저장된 작성자 구함
		HttpSession session = req.getSession();
		String user_id = (String)session.getAttribute("user_id");
		
		//아이디 or 세션 값이 null인 경우
		if(writer == null || user_id == null) {
			//res.sendRedirect(path);
			res.setContentType("text/html; charset = utf-8;");
			PrintWriter out = res.getWriter();
			out.println("<script>");
			out.println("alert('허용하지 않는 접근입니다');");
			out.println("history.go(-1);");
			out.println("</script>");
			return;
		}
		//작성자와 세션이 같지 않은 경우
		if( !user_id.equals(writer)) {
			
			//res.sendRedirect(path);
			res.setContentType("text/html; charset = utf-8;");
			PrintWriter out = res.getWriter();
			out.println("<script>");
			out.println("alert('권한이 없습니다');");
			out.println("history.go(-1);");
			out.println("</script>");
			return;
		}
		
		//
		chain.doFilter(request, response);
	}
	


}
