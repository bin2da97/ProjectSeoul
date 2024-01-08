package com.seoul.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seoul.tour.mapper.BoardAttachMapper;
import com.seoul.tour.mapper.BoardMapper;
import com.seoul.tour.vo.BoardVO;

import lombok.Setter;

@Service
public class BoardServicelmpl implements BoardService {
	
	@Setter(onMethod_=@Autowired)
	private BoardMapper mapper;
	
	@Setter(onMethod_=@Autowired)
	BoardAttachMapper attachMapper;
	
	@Override
	public void insert(BoardVO vo) {
		System.out.println("서비스 등록 : ");
		mapper.insert(vo);//게시글 등록 
		if(vo.getAttachList()==null || vo.getAttachList().size()<=0) return;
		vo.getAttachList().forEach(i->{ //첨부파일을 하나씩 꺼내어
		
			i.setBno((long)mapper.max()); //첨부파일에 게시글의 bno를 읽어 첨부파일의 멤버변수에 저장
			attachMapper.insert(i); // 첨부파일 테이블에 첨부파일 등록 
		});
	}
	
	@Override
	public List<BoardVO> selectAll() {
		List<BoardVO> boardlist = mapper.selectAll();
		return boardlist;
				
	}

	@Override
	public int max() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardVO selectBno(Long bno) {
		System.out.println("서비스에서 게시글 하나 가져오기 : " +bno);
		BoardVO vo = mapper.selectBno(bno);
		return vo;
	}
	
}

