package com.daegumian.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daegumian.user.model.UserDAO;
import com.daegumian.user.model.userVO;

public class UserServiceImpl implements UserService {

	@Override
	public int join(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		//아이디 중복검사
		//싱글톤 객체를 얻는 방법
		UserDAO dao = UserDAO.getInstance();
		int result = dao.idCheck(id);
		
		System.out.println("결과 : " + result);
		
		if(result == 1) { //중복이란 뜻
			return 1;
			
		} else { //중복이 아니니, 가입처리 고고!!
			userVO vo = new userVO(id, pw, name, email, gender, null);
			dao.join(vo);
			
			return 0;
		}
		
	}

	@Override
	public userVO login(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//로그인
		UserDAO dao = UserDAO.getInstance();
		userVO vo = dao.login(id, pw);
		
		return vo;
	}
	
	

}
