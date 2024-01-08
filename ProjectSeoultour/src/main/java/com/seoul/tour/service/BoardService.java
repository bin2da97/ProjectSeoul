package com.seoul.tour.service;


import java.util.List;

import com.seoul.tour.vo.BoardVO;

public interface BoardService {
	 public void insert(BoardVO vo);
	 public List<BoardVO> selectAll() ;
	 public int max();
	 public BoardVO selectBno(Long bno);
}
