package com.daegumian.user.service;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daegumian.user.model.UserDAO;
import com.daegumian.user.model.UserVO;

public class UserServiceImpl implements UserService {

	//회원가입
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
			UserVO vo = new UserVO(id, pw, name, email, gender, null);
			dao.join(vo);
			
			return 0;
		}
		
	}

	//로그인
	@Override
	public UserVO login(HttpServletRequest request, HttpServletResponse response) {

	    // HTTPServletRequest에서 id와 pw 값을 가져옴
	    String id = request.getParameter("id");
	    String pw = request.getParameter("pw");

	    // 로그인
	    UserDAO dao = UserDAO.getInstance(); // DAO 객체 생성
	    UserVO vo = dao.login(id, pw); // DAO의 login 메소드를 호출하여 로그인 수행

	    return vo; // 로그인 결과인 UserVO 객체를 반환
	}
	
	//회원정보 조회
	@Override
	public UserVO getInfo(HttpServletRequest request, HttpServletResponse response) {
		
		//' 회원 아이디(ex.daegumian)' - 이전화면에서 필요한 값을 넘겨주던 vs 회원아이디는 세션에 존재
		//세션 아이디는 세션에 존재
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user_id"); //강제형변환
		
		//dao호출
		UserDAO dao = UserDAO.getInstance();
		UserVO vo = dao.getInfo(id);
		
		
		return vo;
	}

	//회원정보 수정
	@Override
	public int updateInfo(HttpServletRequest request, HttpServletResponse response) {
		
		/*
		 * 서비스와 DAO영역을 작성.
		 * 1. 아이디 기반으로 회원정보를 수정합니다.
		 * 2. 성공실패 여부를 컨트롤러로 반환 받기.
		 * 3. 수정 성공시에는 mypage로 리다이렉트, 실패시에도 modify로 리다이렉트
		 * 		(값을 가져갈게 없기 때문에 리다이렉트로 보냄)
		 * 
		 * */
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		UserVO vo = new UserVO(id, pw, name, email, gender, (Timestamp)null);
		//dao객체
		UserDAO dao = UserDAO.getInstance();
		int result = dao.updateInfo(vo);
		return result;
		
		
		
	}
	
	

}
