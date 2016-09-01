package com.hongchaegojung.railro.dao;

import java.util.List;

import com.hongchaegojung.railro.dto.Notice;
import com.hongchaegojung.railro.dto.Paging;

public interface NoticeDAO {
	// 글 전체 개수
	public int getTotalNoticeListCount(String keyField, String keyWord);

	// 글 목록 
	public List<Notice> getNoticeList(Paging paging, String keyField, String keyWord);
	
	// 글 상세보기 
	public Notice getDetail(int ID);
	
	// 글 등록 
	public void insert(Notice notice);
	
	// 글 수정 
	public void update(Notice notice);
	
	// 글 삭제 
	public void delete(int ID);
	
	// 글 답변 등록
	public int replyInsert(Notice notice);
	
	// 조회수 업데이트 
	public void setHitUpdate(int ID);
	
}
