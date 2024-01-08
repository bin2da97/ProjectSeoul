package com.seoul.tour.service;

import com.seoul.tour.vo.UserVO;

public interface RegisterService {
	public int register(UserVO vo);
	public UserVO memberById(String id_);


}
