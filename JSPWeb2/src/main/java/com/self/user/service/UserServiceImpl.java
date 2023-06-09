package com.self.user.service;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.self.user.model.UserDAO;
import com.self.user.model.UserVO;

public class UserServiceImpl implements UserService{

	//회원가입
	@Override
	public int join(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		UserDAO dao = UserDAO.getInstance();
		int result = dao.idCheck(id);
		
		System.out.println("결과 : " + result);
		
		if(result == 1) {
			return 1;
			
		}else {
			UserVO vo = new UserVO(id, pw, name, email, gender, null);
			dao.join(vo);
			
			return 0;
		}
		
	}

	
	// 로그인
	@Override
	public UserVO login(HttpServletRequest request, HttpServletResponse response) {

	    // HttpServletRequest에서 id와 pw 값을 가져옴
	    String id = request.getParameter("id");
	    String pw = request.getParameter("pw");

	    // UserDAO의 싱글톤 인스턴스를 가져옴
	    UserDAO dao = UserDAO.getInstance();

	    // UserDAO의 login 메소드를 호출하여 id와 pw를 사용하여 로그인 수행
	    UserVO vo = dao.login(id, pw);

	    return vo; // 로그인 결과인 UserVO 객체를 반환
	}
	
	
	

}
