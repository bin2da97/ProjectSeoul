package com.seoul.tour.mapper;

import java.util.List;

import com.seoul.tour.vo.BoardVO;

public interface BoardMapper {
//	public void selectAll(BoardVO vo);
	public List<BoardVO> selectAll(); // list이름에 selectAll
	public void insert(BoardVO vo);
	public BoardVO selectBno(Long bno);
	public int max();
	

}
