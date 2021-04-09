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
import kr.or.bit.service.Board_writeokService;
import kr.or.bit.service.RegisterOkServiceAction;


@WebServlet("*.do")
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public BoardFrontController() {
        super();
        
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			if(urlcommand.equals("/Board_Write.do")) {
				System.out.println("THIS is Board_Write.do");
				forward = new ActionForward();
	    		forward.setRedirect(false);
	    		forward.setPath("/WEB-INF/Board/board_write.jsp"); 
	    	
			}
			else if(urlcommand.equals("/Board_Write.do")) {
				System.out.println("THIS is Board_Write.do");
				forward = new ActionForward();
				action=new Board_writeokService();
	    		forward = action.execute(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
    		System.out.println(e.getMessage());
		}
    	
    	//여기서 이제 페이지렌더링
    	if(forward != null) {
    		if(forward.isRedirect()){//true라면 페이지를 재요청
    			response.sendRedirect(forward.getPath());
    		}else {//false
    			//1. UI만 전달된 겨우
    			//2. UI + 로직
    			RequestDispatcher dis = request.getRequestDispatcher(
    					forward.getPath());
        		dis.forward(request, response);
    		}
    	}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}