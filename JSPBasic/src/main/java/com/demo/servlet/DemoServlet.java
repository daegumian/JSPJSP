package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/banana")  //이 방법이 훨씬 더 편함
//urlPatterns가 기본값이기 때문에 생략 가능
@WebServlet("/banana")//클라이언트에서 특정 단어로 요청이 오면 이 클래스로 연결
public class DemoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	//get, post 메소드를 오버라이드

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		out.println("hello world");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}
	
	
}
