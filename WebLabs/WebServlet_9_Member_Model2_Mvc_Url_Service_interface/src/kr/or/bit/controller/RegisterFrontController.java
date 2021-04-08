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
import kr.or.bit.dao.Mvcregisterdao;
import kr.or.bit.dto.registerdto;
import kr.or.bit.service.LoginOkServiceAction;
import kr.or.bit.service.RegisterOkServiceAction;



/*
 * URL 방식
 * 주소가 고정되면 안됨
 * 
 * 
 */

@WebServlet("*.do")
public class RegisterFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterFrontController() {
        super();
        
      }

    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
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
    	
    	String viewpage="";
    	if(urlcommand.equals("/Register.do")) {
    		//UI제공 (서비스클래스가 필요없다.)
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/WEB-INF/Register/Register.jsp");
    	}
    	else if(urlcommand.equals("/Registerok.do")) {
    		//UI제공 + 로직 필요
    		action=new RegisterOkServiceAction();
    		forward = action.execute(request, response);
    		//POINT
    		//execute > request객체의 주소와 response객체의 주소를 전달
    		
    	}else if(urlcommand.equals("/login.do")) {
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/WEB-INF/login/login.jsp");
    	}else if(urlcommand.equals("/loginok.do")) {
    		action = new LoginOkServiceAction();
    		forward = action.execute(request, response);
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
    	
    	/*
    	//3. 요청 판단해서 서비스 만들기
    	String viewpage="";
    	
    	if(command.equals("/Register.do")) {
    		//화면전달
    		viewpage="/WEB-INF/Register/Register.jsp";
    	}else if(command.equals("/Registerok.do")) {
    		//로직처리
    		//추가적인 데이터
    		int id = Integer.parseInt(request.getParameter("id"));//
    		String pwd = request.getParameter("pwd");
    		String email = request.getParameter("email");
    		
    		registerdto dto = new registerdto();
    		dto.setId(id); 
    		dto.setPwd(pwd);
			dto.setEmail(email);
    		
    		Mvcregisterdao dao = new Mvcregisterdao();
    		int result = dao.writeOk(dto);
    		
    		String resultdata="";
    		if(result>0) {
    			resultdata = "welcome to bit" + dto.getId() + "님";
    		}
    		else {
    			resultdata = "Insert Fail retry";
    		}
    		
    		//결과저장하기
    		request.setAttribute("data", resultdata);
    		
    		//뷰 지정
    		viewpage = "/WEB-INF/Register/Register_welcome.jsp";
    	}
    	*/
    		//RequestDispatcher dis = request.getRequestDispatcher(viewpage);
    	
    		//dis.forward(request, response);
    	
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		}

}
