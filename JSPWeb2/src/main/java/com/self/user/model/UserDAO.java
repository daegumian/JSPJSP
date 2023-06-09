package com.self.user.model;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import com.self.user.model.UserVO;

public class UserDAO {
	
	//싱글톤 형태의 클래스로 생성하는 것이 좋다.,
	//1. 나 자신의 객체를 스태틱으로 선언
	private static UserDAO instance = new UserDAO();
	
	//2. 직접 생성하지 못하도록 생성자 제한
	private UserDAO() {
		//생성자에서 드라이버 클래스 호출
		try {
			//여기서 선언해서 여러 메서드가 공유할 수 있도록.
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		}catch (Exception e) {
		}
	
	}
	
	//3.getter를 통해서 객체를 반환
	public static UserDAO getInstance() {
		return instance;
	}
	
	//데이터베이스 연결 주소
	//오라클을 연결하려면 + 오라클 커넥터
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "JSP2";
	private String upw = "JSP2";
	
	//id중복검사
	public int idCheck(String id) {
		
		int result = 1;
		
		String sql = "select * from users2 where id = ?";
		
		// 데이터베이스와의 연결을 설정, SQL 문장을 실행, 결과를 반환하는 등의 작업을 수행하는데 사용
		Connection conn = null;
		//SQL 쿼리 문장을 사전에 준비, 실행 시 동적으로 매개 변수를 전달하는 기능을 제공하는 인터페이스
		PreparedStatement pstmt = null;
		//데이터베이스에서 가져온 결과 집합을 나타내는 역할.
		ResultSet rs = null; 
		
		try {
			
			//생성자에서 드라이버 클래스는 호출했기 때문에, 드라이버클래스 호출은 생략
			
			//1.connector
			conn = DriverManager.getConnection(url,uid,upw);
			
			//2.pstmt
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id); //연결된 sql DB데이터에서 원하는 테이블의 값 지정
			
			//3.ResultSet
			rs = pstmt.executeQuery(); //select문 rs에 저장.
			
			if(rs.next()) { //중복 o
				result = 1;
			} else { //중복 x
				result = 0; 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		
		return result; //중복이면 1, 중복 아니면 0을 리턴!
		
	}
	
	//회원 가입
	public void join(UserVO vo) {
		
		String sql = "insert into users2(id, pw, name, email, gender) values(?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getGender());
			
			pstmt.executeUpdate(); //성공시 1, 실패시0 //특별한 처리를 할 것이 아니기에 여기까지.
			
		} catch (Exception e) {
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {
			}
		}
	}
	
	//로그인
	public UserVO login(String id, String pw) {

	    //로그인 성공이면 VO객체가 반환, 로그인 실패면 null값이 반환.
	    UserVO vo = null;

	    // SQL 쿼리문
	    String sql = "select * from users2 where id = ? and pw = ?";
	    
	    // 데이터베이스 연결 관련 변수들
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;

	    try {
	        // 데이터베이스 연결
	        conn = DriverManager.getConnection(url, uid, upw);
	        
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, id); // 연결된 SQL 데이터베이스에서 원하는 테이블의 값 지정
	        pstmt.setString(2, pw);

	        rs = pstmt.executeQuery(); // select 문을 rs에 저장.

	        while(rs.next()) {
	            // 결과 집합에서 각각의 필드 값을 가져와 변수에 저장
	        	String id2 = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				Timestamp regdate = rs.getTimestamp("regdate");

	            // UserVO 객체를 생성하여 사용자 정보를 저장
				vo = new UserVO(id2, null, name, email, gender, regdate);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            // 데이터베이스 연결 해제
	            conn.close();
	            pstmt.close();
	            rs.close();
	        } catch (Exception e2) {
	        }
	    }

	    return vo;
	}
	
}
