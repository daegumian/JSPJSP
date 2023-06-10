package com.self.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.self.user.model.UserVO;
import com.self.user.service.UserService;
import com.self.user.service.UserServiceImpl;

//1. 확장자패턴으로 변경
@WebServlet("*.user")//.user가 다 여기로 들어올 수 있게.
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	//2. get/post를 하나로 모은다.
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//3. 요청 분기
		
		//한글처리
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring(conPath.length());
		
		System.out.println(command);
		
		//필요한 객체를 if문 바깥에 선언
		UserService service = new UserServiceImpl();
		
		//세션에 회원정보를 저장하는 방법	(여러곳에 쓰기 위해 if 밖 지역변수로 선언)
		HttpSession session = request.getSession();
		
		//**MVC2에서는 화면을 띄우는 요청도 컨트롤러를 거쳐 나가도록 처리한다.
		//** 기본 이동이 전부 forward형식으로 처리 한다.
		//** sendRedirect는 다시 controller를 태워 나가는 용도로 사용한다.
		
		if(command.equals("/index.user")) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else if(command.equals("/member/member.user")) {
			request.getRequestDispatcher("member.jsp").forward(request, response);
		}
		else if(command.equals("/user/user_join.user")) {
			request.getRequestDispatcher("user_join.jsp").forward(request, response);
		}
		else if(command.equals("/user/user_login.user")) {
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
		}
		
		//회원가입요청
		
		else if(command.equals("/user/joinForm.user")) {
			
			//가입, (자식으로 만들어서 부모로 쓸 수 있따.

			int result = service.join(request, response);
			
			if(result == 1) { //중복
				//message 1회성으로 쓰기 위해 request에 저장해서 보냄
				request.setAttribute("msg", "중복된 아이디 입니다");
				request.getRequestDispatcher("user_join.jsp").forward(request, response);
			}else { // 중복 x 가입성공!
				response.sendRedirect("user_login.user");
			}
		//로그인
		}else if(command.equals("/user/loginForm.user")) {
			
			UserVO vo = service.login(request, response);
			
			if(vo == null) { //로그인 실패
				
				request.setAttribute("msg", "아이디/비밀번호를 확인하세요");
				request.getRequestDispatcher("user_login.jsp").forward(request, response);
			}else { //로그인 성공
				//세션에 id,pw 저장해서 mypage로 넘기기.
				session.setAttribute("user_id", vo.getId());
				session.setAttribute("user_name", vo.getName());
				response.sendRedirect("user_mypage.jsp");
			}
		//나의정보 화면	
		}else if(command.equals("/user/user_mypage.user")) {
			request.getRequestDispatcher("user_mypage.jsp").forward(request, response);
		
		//로그아웃 기능
		}else if(command.equals("/user/user_logout.user")) {
			session.invalidate();
			request.getRequestDispatcher("user_logout.jsp").forward(request, response);
		
		//회원정보수정 기능
		}else if(command.equals("/user/user_modfy.user")) {
			
			//회원정보를 가지고 감
			UserVO vo = service.getInfo(request, response);
			request.setAttribute("vo", vo);
			
			request.getRequestDispatcher("user_modify.jsp").forward(request, response);
		
		}else if(command.equals("/user/user_update.user")) {
			
			int result = service.updateInfo(request, response);
			
			if(result == 1) { // 수정 성공
				
				String name = request.getParameter("name");
				session.setAttribute("user_name", name);
				
				//out객체를 이용한 메시지 전달 //PrintWriter -> 출력한
				response.setContentType("text/html; charset=utf-8;");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('수정 성공했어요');");
				out.println("location.href='user_mypage.user';");
				out.println("</script>");
				
			}else { //수정 실패
				System.out.println(result);
				
				response.sendRedirect("user_modify.jsp");
			}
			
		
		}
		
		
		
		
	}
	
}
