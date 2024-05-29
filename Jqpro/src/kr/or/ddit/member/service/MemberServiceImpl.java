package kr.or.ddit.member.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberMybatisDaoImpl;
import kr.or.ddit.member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {
	private static MemberServiceImpl service;
	private IMemberDao dao; // DAO객체가 저장될 변수 선언
	// 생성자
	private MemberServiceImpl() {
		dao = MemberMybatisDaoImpl.getInstance();
	}
	
	public static MemberServiceImpl getInstance() {
		if(service==null) service = new MemberServiceImpl();
		return service;
	}

	@Override
	public List<MemberVO> getAllMember() {
		return dao.getAllMember();
	}

}
