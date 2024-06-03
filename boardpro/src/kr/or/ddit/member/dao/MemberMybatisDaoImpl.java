package kr.or.ddit.member.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;
import kr.or.ddit.util.MyBatisUtil;

public class MemberMybatisDaoImpl implements IMemberDao{
	private static MemberMybatisDaoImpl dao;
	
	// 생성자가 없으면 다른 클래스에서 객체를 생성할 수도 있기 때문에 private로 생성 못하게 막음
	private MemberMybatisDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	
	public static MemberMybatisDaoImpl getInstance() {
		if(dao==null) {
			dao = new MemberMybatisDaoImpl();
		}
		return dao;
	}

	@Override
	public List<MemberVO> getAllMember() {
		List<MemberVO> list = null;
		SqlSession session = null;
		try {
			session = MyBatisUtil.getSqlSession();
			list = session.selectList("mem.getAllMem");
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if(session!=null) try {session.close();}catch(Exception e){}
		}
		return list;
	}

	@Override
	public int idChk(String mem_id) {
		SqlSession session = null;
		int cnt = 0;
		try {
			session = MyBatisUtil.getSqlSession();
			cnt = session.selectOne("mem.idchk", mem_id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if(session!=null) try {session.close();}catch(Exception e){}
		}
		return cnt;
	}

	@Override
	public List<ZipVO> zipSearch(String dong) {
		SqlSession session = null;
		List<ZipVO> list = null;
		
		try {
			session = MyBatisUtil.getSqlSession();
			list = session.selectList("mem.zip", dong);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if(session!=null) try {session.close();}catch(Exception e){}
		}
		return list;
	}

	@Override
	public int insertMember(MemberVO vo) {
		SqlSession session = null;
		int cnt = 0;
		try {
			session = MyBatisUtil.getSqlSession();
			cnt = session.insert("mem.insertMember", vo);
			
			if(cnt>0) {
				session.commit();
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if(session!=null) try {session.close();}catch(Exception e){}
		}
		return cnt;
	}

	@Override
	public MemberVO login(MemberVO vo) {
		SqlSession session = null;
		MemberVO memVo = new MemberVO();
		try {
			session = MyBatisUtil.getSqlSession();
			memVo = session.selectOne("mem.login", vo);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if(session!=null) try {session.close();}catch(Exception e){}
		}
		return memVo;
	}

}
