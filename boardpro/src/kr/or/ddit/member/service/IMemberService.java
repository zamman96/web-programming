package kr.or.ddit.member.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

/**
 * Service객체는 DAO에 만들어진 메서드를 원하는 작업에 맞게 호출하여
 * 결과를 받아오고, 받아온 결과를 Controller에게 보내주는 역할을 한다
 * 
 * 보통 DAO의 메서드와 구조가 같다
 * @author PC-13
 *
 */
public interface IMemberService {
	/**
	 * DB의 전체 회원 정보를 가져와 List에 담아서 반환하는 메서드
	 * @return 전체 회원정보 각각을 MemberVO에 담고 있는 List객체
	 */
	public List<MemberVO> getAllMember();
	
	
	/**
	 * @param mem_id
	 * @return 아이디 count값
	 */
	public int idChk(String mem_id);
	
	/**
	 * @param add
	 * @return 검색 결과의 zipVO를 담고있는 List객체
	 */
	public List<ZipVO> zipSearch(String dong);
	
	/**
	 * @param 회원 정보를 가지고 있는 MemberVO 객체
	 * @return 작업 성공 1
	 */
	public int insertMember(MemberVO vo);
	
	public MemberVO login(MemberVO vo);
}
