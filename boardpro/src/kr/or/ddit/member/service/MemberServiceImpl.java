package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberMybatisDaoImpl;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

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

	@Override
	public int idChk(String mem_id) {
		// TODO Auto-generated method stub
		return dao.idChk(mem_id);
	}

	@Override
	public List<ZipVO> zipSearch(String dong) {
		// TODO Auto-generated method stub
		return dao.zipSearch(dong);
	}

	@Override
	public int insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return dao.insertMember(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) {
		// TODO Auto-generated method stub
		return dao.login(vo);
	}

}
