package kr.or.bit.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.memodao;
import kr.or.bit.dto.memo;

public class MemoListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		// TODO Auto-generated method stub
		
		memodao dao = new memodao();

			
    		List<memo> memolist = dao.getMemoList();
    		System.out.println(memolist);
    		
    		//화면에 출력해서 Client 전달
    		//View 사용 (JSP)
    		
    		//결과저장하기
    		request.setAttribute("data", memolist);
    		
    		//뷰 지정
    		ActionForward forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/WEB-INF/Memo/memolist.jsp");
    		
    		return forward;

	}

}
