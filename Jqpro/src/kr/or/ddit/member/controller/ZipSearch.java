package kr.or.ddit.member.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.ZipVO;

/**
 * Servlet implementation class ZipSearch
 */
@WebServlet("/ZipSearch.do")
public class ZipSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IMemberService service = MemberServiceImpl.getInstance();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		StringBuffer buf = new StringBuffer();
		String line = null;
		
		try {
			BufferedReader br = request.getReader();
			while((line = br.readLine())!=null) {
				buf.append(line);
			}
		} catch (Exception e) {
			// TODO: handle exception
		} 

		String reqdata = buf.toString();
		
		Gson gson = new Gson();
		ZipVO vo = gson.fromJson(reqdata, ZipVO.class);
		
		String dong = vo.getDong();
		
//		String dong = request.getParameter("dong");
		List<ZipVO> list = service.zipSearch(dong);
		
		request.setAttribute("listvalue", list);
		request.getRequestDispatcher("/비동기fetch/view/zip.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
