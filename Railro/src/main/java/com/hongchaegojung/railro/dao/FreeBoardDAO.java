package com.hongchaegojung.railro.dao;

import java.util.List;

import com.hongchaegojung.railro.dto.Board;

public class FreeBoardDAO implements BoardDAO{

	@Override
	public int getTotalBoardListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Board> searchBoardList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countSearchBoardList() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Board> getBoardList(int page, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Board getDetail(int ID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(Board board) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Board board) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int ID) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int replyInsert(Board board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setHitUpdate(int ID) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isBoardWriter(int ID, String WRITER) {
		// TODO Auto-generated method stub
		return false;
	}

}