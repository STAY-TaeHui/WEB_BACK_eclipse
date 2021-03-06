package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class empDAO {
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1521:XE";
	private static final String user = "bituser";
	private static final String pwd = "1004";
	// private Connection con;
	 private Statement stmt;
	// 회원 정보 조회 SQL문을 실행하여 조회한 레코드들의 컬럼 값을 다시 MemberVO객체의 속성에 설정한 다음
	// ArrayList에 저장하고 호출한 곳으로 반환

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	// prepareStatement 인터페이스를 사용하여 SQL문을 미리 컴파일하여 재사용하므로 빠르게 DB작업 수행
	// DB와 연동할 때 또는 빠른 반복 처리가 필요할때 이 인터페이스를 사용

	public void executeQuery(String column, int where) {
		try {/*
				 * connDB(); //4가지 정보로 데이터베이스 연결 String query = "select * from t_member ";
				 * System.out.println(query); ResultSet rs = stmt.executeQuery(query); //SQL문으로
				 * 회원 정보를 조회
				 */
			connDB();
			stmt=con.createStatement();									//"deptno"       //20
			String sql="select empno , ename, deptno from emp where " + column + "=" + where;
			System.out.println(sql);
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				
				do{
					//컬럼의 순서 [1][2][3][4]
					System.out.println(rs.getInt(1) + "," + rs.getString(2) +"," + rs.getInt(3));
				}while(rs.next());
				
			}else{
				System.out.println("조회된 데이터가 없습니다");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			close(con);
		}

	}

	public static void close(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}

		}
	}

	public static void close(Statement stmt) {
		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}

		}
	}

	public static void close(PreparedStatement pstmt) {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}

		}
	}

	public static void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}

		}
	}

	private void connDB() {
		try {
			Class.forName(driver);
			System.out.println("Oracle 드라이버 로딩 성공");
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("Connection 생성 성공");
			// stmt = con.createStatement();
//			System.out.println("Statement 생성 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
