package kr.or.bit.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public ActionForward execute(
			HttpServletRequest request, HttpServletResponse response);
	
	//당신이 Action을 구현한다면
	//강제 사항 : execute함수를 반드시 구현해야함.
	//execute(){return new ActionForward();} 강제!!
}
