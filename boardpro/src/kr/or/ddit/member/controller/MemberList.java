package kr.or.ddit.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;

@WebServlet("/MemberList.do")
public class MemberList extends HttpServlet{
	private static final long serialVersionUID = 1L;

	// service 객체 얻기
	private IMemberService service = MemberServiceImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클라이언트 전송시 데이터값 받기 - id, pass
		String id = request.getParameter("id");
        String password = request.getParameter("password");
		
//        MemberVO member = service.login(id, password);
		
		// service객체 얻기 - 결과값을 받는다
		List<MemberVO> list = service.getAllMember();
		
		// list를 출력 - view페이지로 이동 - jsp페이지
		// 출력이 아닌 json형태로 변경
		
		// list결과값을 jsp페이지에서도 알아야 한다
		// list결과값을 현재 controller와 view페이지 - jsp와 공유해야한다
		
		// 공유하는 방법
		// request에 저장 - forward()로 호출
        request.setAttribute("listvalue", list);
        request.getRequestDispatcher("/member_view/memberList.jsp").forward(request, response);
    }
	
}
