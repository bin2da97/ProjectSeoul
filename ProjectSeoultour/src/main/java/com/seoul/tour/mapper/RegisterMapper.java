package com.seoul.tour.mapper;

import com.seoul.tour.vo.UserVO;

public interface RegisterMapper {
	public int register(UserVO vo);
	public UserVO memberById(String id_);
}
