package com.daegumian.user.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class UserDAO {
	
	//싱글톤 형태의 클래스로 생성하는 편이 좋다.
	//1. 나 자신의 객체를 스태틱으로 선언
	private static UserDAO instance = new UserDAO();
	//2. 직접 생성하지 못하도록 생성자 제한
	private UserDAO() {
		//생성자에서 드라이버클래스 호출
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
		}
		
	}

	//3.getter를 통해서 객체를 반환
	public static UserDAO getInstance() {
		return instance;
	}
	
	//데이베이스 연결 주소
	//오라클 연결하려면 + 오라클 커넥터(ojbdc11을 webinf-lib에 넣기)
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "JSP";
	private String upw = "JSP";
	
	/*
	 * @author 20230608 박동훈 중복검사
	 * 
	 * */
	//id중복검사
	public int idCheck(String id) {
		
		int result = 1;
		
		String sql = "select * from users where id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//1. Connector
			conn = DriverManager.getConnection(url, uid, upw);
			//2. Pstmt
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			//3. ResultSet
			rs = pstmt.executeQuery(); //select문
			
			if(rs.next()) { //중복 o
				result = 1;
			} else { //중복 x
				result = 0;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		
		return result;
	}
	
	//회원가입
	public void join(userVO vo) {
		
		String sql = "insert into users(id, pw, name, email, gender) values(?, ?, ?, ?, ?)";
	
		Connection conn = null;
		PreparedStatement pstmt= null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getGender());
			
			pstmt.executeUpdate(); //성공시 1, 실패시 0 //특별한 처리를 할 것이 아니기 때문에 여기까지.
			
			
		} catch (Exception e) {
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	//로그인
	public userVO login(String id, String pw) {
		
		//로그인 성공이면 VO객체가 반환, 로그인 실패면 null값이 반환
		userVO vo = null;
		
		String sql = "select * from users where id = ? and pw =?";
		
		Connection conn = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				String id2 = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				Timestamp regdate = rs.getTimestamp("regdate");
			
				vo = new userVO(id2, null, name, email, gender, regdate);
			
			}
			
			
		} catch (Exception e) {
		}finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		
		return vo; 
	}
	

	
	
}
