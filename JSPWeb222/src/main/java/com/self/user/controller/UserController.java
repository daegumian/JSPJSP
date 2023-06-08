package com.self.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		else if(command.equals("/user/join.form.user")) {
			
			//가입, (자식으로 만들어서 부모로 쓸 수 있따.
			
			int result = join(request, respone); 
			
		}
		
		
		
	}
	
}
