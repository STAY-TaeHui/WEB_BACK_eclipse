package kr.or.bit.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.memodao;
import kr.or.bit.dto.memo;

public class MemoServletAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
    	
    	String id = request.getParameter("id");
    	String email = request.getParameter("email");
    	String content = request.getParameter("content");
    	
    	System.out.println(id + " / " + email + " / " + content);
    	
    	//별도의 UI가지지 않고
    	//성공 >> 목록보기 ....
    	//실패 >> 재입력
    	
    	response.setContentType("text/html;charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	
    	try {
    		  memodao dao = new memodao();
    		  
    		  // => dto를 사용하는게 권장하는 방법
    		  //memo m = new memo(id,email,content);
    		  //dao.insertMemo(m);
    		 int row= dao.insertMemo(new memo(id,email,content));
    		 
    		 System.out.println("반영된 행의 수 : " + row);
    		 
    		 if(row > 0) {
    			 out.print("<script>");
    			 	out.print("alert('등록성공');");
    			 	out.print("location.href='MemoList.do';");
    			 	//localhost:8090/WebServlet_4_Memo_mvc/MemoList
    			 out.print("</script>");
    		 }else {
    			 //
    		 }
    		 
    		//뷰 지정
     		ActionForward forward = new ActionForward();
     		forward.setRedirect(false);
     		forward.setPath("/WEB-INF/Memo/memolist.jsp");
    		 
    	}catch (Exception e) {
    		 out.print("<script>");
			 	out.print("alert('등록실패');");
			 	out.print("location.href='memo.html';");
			 out.print("</script>");
    		
    		System.out.println(e.getMessage());
		}
		return null;
	}

}
