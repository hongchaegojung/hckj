package com.hongchaegojung.railro.controllers;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hongchaegojung.railro.dao.NoticeDAO;
import com.hongchaegojung.railro.dto.Notice;
import com.hongchaegojung.railro.dto.Paging;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/noticeList.htm", method=RequestMethod.GET)
	public String noticeList(Paging paging, String pageNo, String keyField, String keyWord, Model model) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		
		paging.setPageSize(3); // 한 페이지에 보일 게시글 수
		paging.setPageNo(1); // 현재 페이지 번호
		
		if(StringUtils.isNotEmpty(pageNo)){
			paging.setPageNo(Integer.parseInt(pageNo));
		}
		paging.setBlockSize(10);
		
		int listCount = noticeDAO.getTotalNoticeListCount(keyField, keyWord);
		
		paging.setTotalCount(listCount); // 게시물 총 개수
		
		List<Notice> list = noticeDAO.getNoticeList(paging, keyField, keyWord);
		
		model.addAttribute("paging", paging);
		model.addAttribute("listCount", listCount);
		model.addAttribute("noticeList", list);
		
		return "notice.noticeList";
	}
	
	@RequestMapping(value="/noticeDetail.htm", method=RequestMethod.GET)
	public String noticeDetail(final int ID, Model model) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		Notice notice = noticeDAO.getDetail(ID);
		model.addAttribute("notice", notice);
		return "notice.noticeDetail";
	}

	@RequestMapping(value="/noticeReg.htm", method=RequestMethod.GET)
	public String noticeReg() {
		return "notice.noticeReg";
	}

	@RequestMapping(value="/noticeReg.htm", method=RequestMethod.POST)
	public String noticeReg(Notice notice) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		noticeDAO.insert(notice);
		return "redirect:noticeList.htm";
	}
	
	@RequestMapping(value="/noticeEdit.htm", method=RequestMethod.GET)
	public String noticeEdit(int ID, Model model) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		Notice notice = noticeDAO.getDetail(ID);
		model.addAttribute("notice", notice);
		return "notice.noticeEdit";
	}
	
	@RequestMapping(value="/noticeEdit.htm", method=RequestMethod.POST)
	public String noticeEdit(Notice notice) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		noticeDAO.update(notice);
		return "redirect:noticeDetail.htm?ID="+notice.getID();
	}
	
	@RequestMapping(value="/noticeDel.htm")
	public String noticeDel(int ID) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		noticeDAO.delete(ID);
		return "redirect:noticeList.htm";
	}

/*	@RequestMapping(value="/noticeSearchList.htm", method=RequestMethod.GET)
	public String noticeSearchList(String keyField, String keyWord, Model model) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		List<Notice> sNoticeList = noticeDAO.searchNoticeList(keyField, keyWord);
		int sListCount = noticeDAO.countSearchNoticeList(keyField, keyWord);
		
		model.addAttribute("sNoticeList", sNoticeList);
		model.addAttribute("sListCount", sListCount);
		return "notice.noticeSearchList";
	}*/


}
