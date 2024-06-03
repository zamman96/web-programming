package kr.or.ddit.member.controller;

import java.io.BufferedReader;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;

@WebServlet("/LoginPro.do")
public class LoginPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static MemberServiceImpl service = MemberServiceImpl.getInstance();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer buf = new StringBuffer();
		String line = null;
		
		try {
			BufferedReader reader = request.getReader();
			while((line=reader.readLine())!=null) {
				buf.append(line);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		String reqdata = buf.toString();
		Gson gson = new Gson();
		MemberVO vo = gson.fromJson(reqdata, MemberVO.class);
		HttpSession session = request.getSession();
		
		MemberVO memVo = service.login(vo);
		if(memVo!=null) {
			session.setAttribute("loginok", memVo);
			session.setAttribute("check", "true");
		} else {
			session.setAttribute("check", "false");
		}
		
		// view페이지(logpro.jsp)로 간다 - forward -
		// html코드로 응답결과를 생성한다 - view페이지 안에 클릭이벤트도 같이 포함
//		response.sendRedirect(request.getContextPath()+"/start/logpro.jsp");
		request.getRequestDispatcher("/start/logpro.jsp").forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
