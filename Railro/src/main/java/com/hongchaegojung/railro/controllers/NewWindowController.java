package com.hongchaegojung.railro.controllers;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hongchaegojung.railro.dao.MemberDAO;
import com.hongchaegojung.railro.dto.Zipcode;

@Controller
@RequestMapping("/newWindow")
public class NewWindowController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/findMyIdPwd.htm", method=RequestMethod.GET)
	public String findMyIdPwd(){
		return "newWindow.findMyIdPwd";
	}
	
	@RequestMapping(value="/idCheck.htm", method=RequestMethod.GET)
	public String idCheck(){
		return "newWindow.idCheck";
	}
	
	@RequestMapping(value="/zipcode.htm")
	public String openZipcode(){
		return "newWindow.zipcode";
	}
	
	@RequestMapping(value="/searchZipcode.htm", method=RequestMethod.POST)
	public String searchZipcode(Model model, String DONG){
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		List<Zipcode> zipcodeList = memberDAO.searchZipcode(DONG);


		model.addAttribute("zipcodeList", zipcodeList);
		
		return "newWindow.zipcode";
	}
	

}
