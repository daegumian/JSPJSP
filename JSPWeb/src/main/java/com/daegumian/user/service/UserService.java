package com.daegumian.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daegumian.user.model.userVO;

public interface UserService { //정의, 연결자로 사용.
	//추상메서드
	int join(HttpServletRequest request, HttpServletResponse response);
	userVO login(HttpServletRequest request, HttpServletResponse response);
	
	
}
