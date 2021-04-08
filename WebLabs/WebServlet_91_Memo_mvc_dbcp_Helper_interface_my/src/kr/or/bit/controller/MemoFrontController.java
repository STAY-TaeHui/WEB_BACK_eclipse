package kr.or.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.service.MemoIdOkAction;
import kr.or.bit.service.MemoListAction;
import kr.or.bit.service.MemoServletAction;


@WebServlet("*.do")
public class MemoFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MemoFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//1. 한글
    	request.setCharacterEncoding("UTF-8");
    	
    	//2. 데이터받기
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String urlcommand = requestURI.substring(contextPath.length());
    	/*
    	 *  requestURI : /WebServlet_8_Member_Model2_Mvc_Url/Register.do
			contextPath : /WebServlet_8_Member_Model2_Mvc_Url
			urlcommand : /Register.do 
    	 *
    	 */
    	
    	//kr.or.bit.service : 서비스클래스
    	Action action = null;
    	
    	ActionForward forward = null;
    	try {
    		//비동기하는방법
    		//1. 비동기 서블릿페이지 하나 따로 만들기
    		//2. 비동기도 프론트컨트롤러에 태우기 >> 
	    	if(urlcommand.equals("/MemoId.do")) {	
	    		System.out.println("THIS is MemoID.do");
	    		action=new MemoIdOkAction();
	    		forward = action.execute(request, response);
	    	}
	    	else if(urlcommand.equals("/MemoList.do")) {
	    		System.out.println("THIS is MemoList.do");
	    		action=new MemoListAction();
	    		forward = action.execute(request, response);
	    	}
	    	else if(urlcommand.equals("/MemoServlet.do")) {
	    		System.out.println("THIS is MemoServlet.do");
	    		action=new MemoServletAction();
	    		forward = action.execute(request, response);
    	}
    	}catch(Exception e) {
    		System.out.println(e.getMessage());
    	}
    	if(forward != null) {
    		if(forward.isRedirect()){//true라면 페이지를 재요청
    			System.out.println("isRedirect");
    			response.sendRedirect(forward.getPath());
    		}else {//false
    			System.out.println("forward");
    			//1. UI만 전달된 겨우
    			//2. UI + 로직
    			RequestDispatcher dis = request.getRequestDispatcher(
    					forward.getPath());
        		dis.forward(request, response);
    		}
    	}
    	
    	else {
    		System.out.println("forward : NULL.......");
    	}
    	
    	
    	
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

}
