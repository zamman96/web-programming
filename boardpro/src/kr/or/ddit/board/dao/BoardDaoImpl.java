package kr.or.ddit.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.ReplyVO;
import kr.or.ddit.util.MyBatisUtil;

public class BoardDaoImpl implements IBoardDao {

	@Override
	public List<BoardVO> getBoard(Map<String, Object> map) {
		SqlSession session = null;
		List<BoardVO> list = null;
		try {
			session = MyBatisUtil.getSqlSession();
			list = session.selectList("board.allBoard", map);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public int getTotalCount(Map<String, Object> map) {
		SqlSession session = null;
		int cnt = 0;
		try {
			session = MyBatisUtil.getSqlSession();
			cnt = session.selectOne("board.totalCount", map);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return cnt;
	}

	@Override
	public int insertBoard(BoardVO bVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(BoardVO bVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateHit(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertReply(ReplyVO rVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateReply(ReplyVO rVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReply(int renum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReplyVO> ListReply(int bonum) {
		// TODO Auto-generated method stub
		return null;
	}

}
