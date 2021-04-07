package kr.or.bit.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.dao.memodao;
import kr.or.bit.dto.memo;


@WebServlet("/MemoList")
public class Memolist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Memolist() {
        super();
       
    }
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[목록보기]");
		
		memodao dao = new memodao();
		
		try {
			List<memo> memolist = dao.getMemoList();
			//화면에 출력해서 Client에게 전달
			//View(JSP)단을 사용할 것 이다.
			
			//데이터 저장
			request.setAttribute("memolist", memolist);
			
			//view 페이지 설정
			RequestDispatcher dis= request.getRequestDispatcher("/memolist.jsp");
			
			//view forward >> 객체 출력
			dis.forward(request, response);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
