package com.seoul.tour.mapper;

import java.util.List;

import com.seoul.tour.vo.AttachFileVO;

public interface BoardAttachMapper {
	public void insert(AttachFileVO vo);
	public void delete(String uuid);
	public List<AttachFileVO> findByBno(Long bno);
	public void deleteAll(Long bno);
	
	
}
