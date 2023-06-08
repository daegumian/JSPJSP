package com.self.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UserService {
	
	//추상 메서드
	int join(HttpServletRequest request, HttpServletResponse response);
	

}
