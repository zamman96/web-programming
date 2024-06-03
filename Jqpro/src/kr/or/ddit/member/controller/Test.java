package kr.or.ddit.member.controller;

import java.util.List;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.ZipVO;

public class Test {
	private static IMemberService service = MemberServiceImpl.getInstance();
	
	public static void main(String[] args) {
		List<ZipVO> list = service.zipSearch("");
		System.out.println(list.size());
	}
}
