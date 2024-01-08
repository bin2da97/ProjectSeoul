package com.seoul.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seoul.tour.mapper.RegisterMapper;
import com.seoul.tour.vo.UserVO;

import lombok.Setter;


@Service
public class RegisterServiceImpl implements RegisterService{
	@Setter(onMethod_=@Autowired)
	private RegisterMapper mapper;

	@Override
	public int register(UserVO vo) {
		System.out.println("여기는 서비스 등록 " +vo);
		return mapper.register(vo);
		
	}

	@Override
	public UserVO memberById(String id_) {
		System.out.println("여기는 로그인 멤버...?"+id_);
		return mapper.memberById(id_);		
	}


	

}
