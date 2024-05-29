package kr.or.ddit.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.member.vo.MemberVO;
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
		List<MemberVO> list = new ArrayList<MemberVO>();
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

}
