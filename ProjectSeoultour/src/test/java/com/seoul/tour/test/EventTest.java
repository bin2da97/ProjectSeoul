package com.seoul.tour.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seoul.tour.service.RegisterService;

import lombok.Setter;

@Controller
@RequestMapping("/")
public class EventTest {

	@Setter(onMethod_=@Autowired)
	private RegisterService service;

	@GetMapping("/member")
	public String login() {
		return "/register2";
	}
}
