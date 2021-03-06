package com;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(
		description = "서블릿은 클래스입니다.", 
		urlPatterns = { 
				"/NowServlet", 
				"/Now.do", 
				"/Now.action", 
				"/Now.star"
		}, 
		initParams = { 
				@WebInitParam(name = "id", value = "bit", description = "id초기값 설정"), 
				@WebInitParam(name = "jdbcDriver", value = "oracle.jdbc.OracleDriver", description = "오라클 드라이버 제공")
		})
public class NowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public NowServlet() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("생성자 객체 생성시 한번 호출");
    }

	
    //init을 사용하는 이유 : 파라미터를 사용하기 위함
	public void init(ServletConfig config) throws ServletException {
		//초기화 함수(자동 호출 함수)
		//호출시점 : NowServlet 클래스 파일에 대한 최초 요청시... 생성자랑 마찬가지
		//재실행 ( 개발자 코드수정, 서버의 재시작) 될때만 실행됨
		
		//첫 접속자 >>
		//NowServlet 컴파일 되고 >> class파일 실행 >> 생성자 호출 >> init함수 자동호출 -> 요청방식에 따라 doGet, doPost
		//두번째 접속자 >>
		//class 실행 >> doGET, doPOST 자동호출
		//결국 init : 클래스 내에 다른 함수가 사용하는 공통자원들의 초기화
		
		//사용할때
		// >> DB연결... 한번만 해놓고 재사용
		String drivername = config.getInitParameter("jdbcDriver");
		System.out.println("최초 요청시 한번 실행 : 드라이버로딩 : " + drivername);
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGET() call");
		
		//servlet만 있던 코드
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPOST() call");
	}

}
