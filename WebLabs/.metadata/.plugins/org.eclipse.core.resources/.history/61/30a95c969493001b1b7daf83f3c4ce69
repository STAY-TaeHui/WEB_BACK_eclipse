package com;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleController
 */

/*
 * web.xml 설정
 * 
 * 서블릿(java로 만든 웹서비스 파일)
 * 서블릿 조건 : extends HttpServlet(상속) 필수 >> 웹 요청(request)객체, 응답(response)객체 사용 가능
 * servlet은 url에서 바로 요청이 안된다. >> 요청을 하고 >> 맵핑하고 >. 요청 주소 생성
 * 
 *  - 맵핑방법 -
 * 1. web.xml
 * 2. @WebServlet
 * 
 * extends HttpServlet 반드시 상속(웹)
 * SimpleController >> 서블릿파일 웹 전용
 * servlet은 이벤트 기반 ( 이벤트가 발생하면 [자동 호출]되는 함수가 있다.)
 * 
 * 자동호출 함수!!! >> dotGet() , doPost() >> request가 get, post일때 자동 호출
 * ex) <form method="get"> or <a href="/simple?num=1000> >>>>>>>>>>> GET방식
 * ex) <form method="post"> or >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> POST방식
 * 
 * doGet(), doPOST() >> 데이터 받기(request, response)사용
 * doGet(HttpServletRequest request, HttpServletResponse response) 파라미터로 request, response
 * 	>> doGet함수 안에서 request,response를 사용할 수 있다.
 * 
 *
 * 
 * 
 * 
 * 
 */
public class SimpleController extends HttpServlet {//HttpServlet 상속
	private static final long serialVersionUID = 1L;
    public SimpleController() {
        super();
        System.out.println("SimpleController 생성자 함수 ㅎ호출....");
       
    }

	
    //클라이언트의 요청이 get방식일때 실행
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("클라이언트 요청 : GET");
		
		//jsp페이지 작업 내용 그대로..
		
		//1. 한글처리
		request.setCharacterEncoding("UTF-8");
		
		
		//2. 데이터 받기
		String type = request.getParameter("type");
		
		
		//3. 로직 수행(요청에 따른 업무수행) >> service
		Object resultobj = null;
		if(type==null || type.equals("greeting")) {
			resultobj = "hello world";
			
			
		}else if(type.equals("date")) {
			resultobj = new Date();
		}else {
			resultobj = "invalid String type";
		}
		
		//4. 요청 완료에 따른 결과를 저장
		//MVC 패턴 방식 ..... (화면 : JSP) 서블릿에서 만든 객체정보를 JSP에게 전달 >> JSP는 화면에 출력
		//결과를 저장하는 방식 :
		// 모든페이지에서 저장 - session변수
		// 특정페이지(include, forward) - request변수
		request.setAttribute("result", resultobj);
		
		//5. 저장한 결과를 JSP 전달(UI) 구성
		//결과를 forward방식을 JSP에게 전달
		//forward - 요청한 주소는 변화가 없고, 결과를 buffer에 forward페이지 정보를 담아서 서비스한다.
		
		//view단 페이지 정의
		RequestDispatcher dis= request.getRequestDispatcher("/simpleview.jsp");
		
		//정의한 페이지를 forward
		dis.forward(request, response);
		//servlet이 가지고 있는 request,response객체의 주소를 넘겨서 사용하곘다.
	}

	
	//클라이언트의 요청이 post방식일때 실행
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("클라이언트 요청 : POST");
	}

}
