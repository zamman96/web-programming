package kr.or.ddit.member.dao;

import java.util.List;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

/**
 * 실제 DB와 연결해서 SQL문을 수행하여 결과를 작성해서
 * Service에게 전달하는  DAO의 interface
 * 
 * 메서드 하나가 DB와 관련된 작업 1개를 수행하도록 작성한다.
 * 
 * @author PC-13
 *
 */
public interface IMemberDao {
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
}
