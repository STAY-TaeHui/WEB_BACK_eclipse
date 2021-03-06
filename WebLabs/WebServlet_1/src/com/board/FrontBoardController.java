package com.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public FrontBoardController() {
        super();
    }
    private void doProcess(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException{
    	//GET이든 POST이든 둘다 동작
    	//method를 통해 GET, POST를 확인
    	System.out.println("클라이언트 요청 : " + method);
    	
    	//1. 한글처리
    	//2. 요청받기(request)
    	//3. 요청판단( 판단의 기준은 파라미터가 어떻게 넘어오냐...)
    	
    	//command 방식(cmd) vs URL주소방식(url 뒷주소 자르기)
    	
    	//실 개발에서는 >> WebContent > WEB-INF > view폴더 생성 > 목적에 따라, board , member, admin ....폴더를 만들어 관리
    	//ex) 보안폴더 : WEB-INF > views > board > boardlist.jsp
    	
    	//1. 한글처리
    	request.setCharacterEncoding("UTF-8");
    	
    	//2. 요청받기 command 방식
    	String cmd = request.getParameter("cmd");
    	
    	//요청 판단
    	String viewpage=null;
    	//cmd > null이면 >> error.jsp 보여주자
    	//cmd > boardlist >> list.jsp 보여주자
    	//cmd > boardwrite >> write.jsp 보여주자
    	
    	if(cmd==null) {
    		viewpage = "/error/error.jsp";
    	}else if(cmd.equals("boardlist")) {
    		//실제 업무 처리(서비스)
    		//DB 연결 >> SELECT >> 객체를 담고 저장
    		//boardDao dao = new dao.selectBoardList();
    		//List<boad> boardlist = dao.selectBoardList();
    		//forward >> view 전달 >> request.getAttrbitue() >> 가지고 와서 화면 출력
    		//출력시에서는 EL&JSTL 사용
    		
    		viewpage = "/board/boardlist.jsp";
    	}else if(cmd.equals("boardwrite")) {
    		viewpage = "/board/boardwrite.jsp";
    		
    	}else if(cmd.equals("login")) {//보안폴더
    		viewpage = "/WEB-INF/views/login/login.jsp";
    	}else {
    		viewpage="/error/error.jsp";
    		
    	}
    	//결과 저장하기
    	
    	
    	//view 지정
    	RequestDispatcher dis = request.getRequestDispatcher(viewpage);
    	dis.forward(request, response);
    	
    	//데이터 전달(forward)
    	
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "GET");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "POST");
	}

}
