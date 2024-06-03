package kr.or.ddit.board.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.PageVO;
import kr.or.ddit.board.vo.ReplyVO;

public interface IBoardService {
	// 글 가져오기 - 3개씩 - 검색 포함
	public List<BoardVO> getBoard(Map<String, Object> map);
	
	// 글 쓰기
	public int insertBoard(BoardVO bVo);
	
	// 글 수정
	public int updateBoard(BoardVO bVo);
	
	// 글 삭제
	public int deleteBoard(int num);
	
	// 조회수 증가
	public int updateHit(int num);
	
	// 전체 글 갯수 가져오기
	public int getTotalCount(Map<String, Object> map);
	
	// 댓글쓰기
	public int insertReply(ReplyVO rVo);
	
	// 댓글 수정
	public int updateReply(ReplyVO rVo);
	
	// 댓글 삭제
	public int deleteReply(int renum);
	
	// 댓글 리스트
	public List<ReplyVO> ListReply(int bonum); 
	
	// 페이지별 정보 구하기 - 페이지 처리를 위한 계산 - page처리를 위한 VO에 저장
	// DB처리를 하지않는 단순 계산, 메서드 dao로 호출되지 않는다
	public PageVO pageInfo(int page, String stype, String sword);
}
