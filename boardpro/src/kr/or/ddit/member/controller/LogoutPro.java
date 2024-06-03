package kr.or.ddit.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutPro
 */
@WebServlet("/LogoutPro.do")
public class LogoutPro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
//		session.invalidate();
		session.removeAttribute("loginok");
		session.removeAttribute("check");
		
		// view페이지 - logpro.jsp
		// 응답결과 생성 - html
//		response.sendRedirect(request.getContextPath()+"/start/logpro.jsp");
		request.getRequestDispatcher("/start/logpro.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
