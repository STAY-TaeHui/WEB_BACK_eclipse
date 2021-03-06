package kr.or.bit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.dao.memodao;
import kr.or.bit.dto.memo;


@WebServlet("/MemoServlet")
public class MemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public MemoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//localhost~~~~/MemoServlet
    	//이 경로로 요청이 들어오면 doGet, doPost 실행
    	
    	//현재 실습은 요청 하나당 >> Servlet 하나 실행
    	
    	//INSERT
    	//1. 한글처리
    	//2. 데이터받기
    	//3. 비지니스 로직
    	
    	request.setCharacterEncoding("UTF-8");
    	
    	String id = request.getParameter("id");
    	String email = request.getParameter("email");
    	String content = request.getParameter("content");
    	
    	System.out.println(id + " " + email + " " + content);
    	
    	response.setContentType("text/html;charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	
    	try {
			memodao dao = new memodao();
			
//			memo m = new memo(id,email,content);
//			dao.insertMemo(m);
			int row=dao.insertMemo(new memo(id,email,content));
			
			System.out.println("반영된 행의 수 " + row);
			
			if(row>0) {
				
				out.print("<script>");
				out.print("alert('등록성공');");
				out.print("location.href='MemoList';");
				//localhost:8090 ~~~~/MemoList
				out.print("</script>");
			}
		} catch (Exception e) {
			// TODO: handle exception
			out.print("<script>");
			out.print("alert('등록실패');");
			out.print("location.href='memo.html';");
			out.print("</script>");
		}
	}
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
