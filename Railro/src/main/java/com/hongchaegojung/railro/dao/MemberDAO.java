package com.hongchaegojung.railro.dao;

import java.util.List;

import com.hongchaegojung.railro.dto.Board;
import com.hongchaegojung.railro.dto.Bookmark;
import com.hongchaegojung.railro.dto.Member;
import com.hongchaegojung.railro.dto.Notice;
import com.hongchaegojung.railro.dto.Paging;
import com.hongchaegojung.railro.dto.Zipcode;

public interface MemberDAO {
	
	// 아이디로부터 IDX 조회
	public int getIDX(String ID);
	
	// 우편번호 검색
	public List<Zipcode> searchZipcode(String DONG);
	
	// 회원가입
	public void join(Member member);
	
	// 회원 수 
	public int countMember();
	
	// 회원목록(조회) 
	public List<Member> getMemberList();
	
	// 회원정보보기 (로그인)
	public Member getMember(String ID);
	
	// 회원정보수정 
	public void modifyMember(Member member);
	
	// 회원탈퇴 
	public void deleteMember(String ID);
	
	// 글 담기
	public void insertBookmark(Bookmark bookmark);
	
	// 글 담기 목록 가져오기(게시판)
	public List<Board> getBookmarkList(int MID, String keyField, String keyWord, Paging paging);
	
	// 담은 글 개수(게시판)
	public int countMyBookmarkList(int MID, String keyField, String keyWord);
	
	// 글 담기 삭제
	public void deleteBookmark(int ID);
	
	// 내가 쓴 글 목록 
	public List<Board> getMyBoardList(int IDX, String keyField, String keyWord, Paging paging);
	
	// 내가 쓴 글 목록 수 
	public int countMyBoardList(int IDX, String keyField, String keyWord); 
	
	// 출석 수 업데이트
	public void updateMyVisit(int IDX);
	
	// 출석 수 조회(내가 접속한 수) 
	public int getMyVisit(int IDX);

}
