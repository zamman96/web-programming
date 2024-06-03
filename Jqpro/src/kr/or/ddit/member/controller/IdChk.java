package kr.or.ddit.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;

/**
 * Servlet implementation class IdChk
 */
@WebServlet("/idChk.do")
public class IdChk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// service 객체 얻기
	private IMemberService service = MemberServiceImpl.getInstance();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mem_id = request.getParameter("mem_id"); // id값
		int cnt = service.idChk(mem_id);
		String result = "<span id='chkOK' style='color:green'>사용가능한 아이디입니다</span>";
		if(cnt>0) {
			result = "<span style='color:red'>중복된 아이디입니다</span>";
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter(); out.println(result);

		
//		request.setAttribute("cnt", cnt);
//        request.getRequestDispatcher("/비동기fetch/view/idChk.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
