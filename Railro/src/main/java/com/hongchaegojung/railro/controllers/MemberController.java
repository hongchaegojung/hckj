package com.hongchaegojung.railro.controllers;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hongchaegojung.railro.dao.MemberDAO;
import com.hongchaegojung.railro.dto.Member;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value="/join.htm", method=RequestMethod.GET)
	public String join() {	
		return "member.join";
	}
	
	@RequestMapping(value="/join.htm", method=RequestMethod.POST)
	public String join(Member member) {
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		memberDAO.join(member);
		
		return "member.login";
	}
	
	@RequestMapping(value="/login.htm", method=RequestMethod.GET)
	public String test2() {
		return "member.login";
	}
	
	@RequestMapping(value="/mypage.htm", method=RequestMethod.GET)
	public String test3() {
		return "member.mypage";
	}
	
	@RequestMapping(value="/myBoardList.htm", method=RequestMethod.GET)
	public String test4() {
		return "member.myBoardList";
	}
	
	@RequestMapping(value="/myBookMarkList.htm", method=RequestMethod.GET)
	public String test5() {
		return "member.myBookMarkList";
	}
	
	@RequestMapping(value="/myInfoEdit.htm", method=RequestMethod.GET)
	public String test6() {
		return "member.myInfoEdit";
	}
}
