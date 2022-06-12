package com.woojaang.webtoon_recommendation.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import com.woojaang.webtoon_recommendation.model.service.TagServiceImpl;

@Controller
public class MainController {

	@Autowired
	private TagServiceImpl service;
	
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/find")
	public ModelAndView find() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("find");
		List<String> list = service.getTags();
		mv.addObject("tags", list);
		return mv;
	}
	
	@PostMapping("/result")
	public String result(HttpServletRequest request) {
		String[] arr = request.getParameterValues("checklist");
		
		System.out.println(request.getParameter("1"));
		System.out.println(request.getParameter("2"));
		System.out.println(request.getParameter("3"));
		return "result";
	}
}
