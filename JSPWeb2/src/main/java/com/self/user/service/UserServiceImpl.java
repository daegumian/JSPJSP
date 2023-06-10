package com.self.user.service;


import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	//로그인
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


	//회원정보 조회
	@Override
	public UserVO getInfo(HttpServletRequest request, HttpServletResponse response) {
		
		//'회원 아이디' - 이전화면에서 필요한 값을 넘겨주던 vs 회원아이디는 세션에 존재
		//세션 아이디는 세션에 존재
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user_id");
		
		//dao호출해서 vo에 담기
		UserDAO dao = UserDAO.getInstance();
		UserVO vo = dao.getInfo(id);
		
		return vo;
	}
	//회원정보 수정
	@Override
	public int updateInfo(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		UserVO vo = new UserVO(id, pw, name, email, gender, (Timestamp)null);
		
		UserDAO dao = UserDAO.getInstance();
		int result = dao.updateInfo(vo);
		
		return result;
	}
	
	
	

}
