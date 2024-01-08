package com.seoul.tour.controller;

import java.util.List;	

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seoul.tour.service.BoardService;
import com.seoul.tour.vo.BoardVO;

import lombok.Setter;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Setter(onMethod_=@Autowired)
	private BoardService service;
	
	@GetMapping("/insert")
	public String insert() {
		return "/insert";
	}

	@PostMapping("/insert")
	public String insertPost(BoardVO vo) {
		System.out.println("컨트롱러에서 게시글 등록 "+ vo);
		
		service.insert(vo);
		return "redirect:/board/list";
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		List<BoardVO> list = service.selectAll();
		list.forEach(i->System.out.println(i));
		model.addAttribute("list",list);
		return "list2";
	}
	
	
	@GetMapping("/postDetails")
    public String detail(Long bno, Model model) {
		BoardVO board = service.selectBno(bno);
		System.out.println("컨트롤러에서 board " +board);
		model.addAttribute("board", board);
        return "postDetails";
    }


}

