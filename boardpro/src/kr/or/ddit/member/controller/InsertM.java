package kr.or.ddit.member.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;

/**
 * Servlet implementation class InsertM
 */
@WebServlet("/InsertM.do")
public class InsertM extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IMemberService service = MemberServiceImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET방식
//		String mem_id = request.getParameter("id");
//		String mem_pass = request.getParameter("pass");
//		String mem_name = request.getParameter("name");
//		String mem_hp = request.getParameter("hp");
//		String mem_bir = request.getParameter("bir");
//		String mem_mail = request.getParameter("mail");
//		String mem_zip = request.getParameter("zip");
//		String mem_add1 = request.getParameter("add1");
//		String mem_add2 = request.getParameter("add2");
//		
//		MemberVO vo = new MemberVO();
//		
//		vo.setMem_add1(mem_add1);
//		vo.setMem_add2(mem_add2);
//		vo.setMem_bir(mem_bir);
//		vo.setMem_hp(mem_hp);
//		vo.setMem_id(mem_id);
//		vo.setMem_mail(mem_mail);
//		vo.setMem_name(mem_name);
//		vo.setMem_pass(mem_pass);
//		vo.setMem_zip(mem_zip);
		
		// POST방식
		request.setCharacterEncoding("UTF-8");
		StringBuffer buf = new StringBuffer();
		String line = null;
		
		try {
			BufferedReader br = request.getReader();
			while((line=br.readLine())!=null) {
				buf.append(line);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		String reqdata = buf.toString();
		
		// 역직렬화 MemberVO로 변환
		Gson gson = new Gson();
		// 여기서 vo.setMem_id()식으로 실행되어서 모든 데이터로 채워진다
		MemberVO vo = gson.fromJson(reqdata, MemberVO.class);
		
		// 성공시 1, 실패 0
		int cnt = service.insertMember(vo);
		
		// request에 저장
		request.setAttribute("cnt", cnt);
		// view페이지로 이동 - forward
		request.getRequestDispatcher("/비동기fetch/view/complete.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
