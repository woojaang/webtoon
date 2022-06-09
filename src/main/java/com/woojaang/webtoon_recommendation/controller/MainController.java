package com.woojaang.webtoon_recommendation.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/find")
	public String find() {
		return "find";
	}
	
	@PostMapping("/result")
	public String result(HttpServletRequest request) {
		System.out.println(request.getParameter("option1"));
		System.out.println(request.getParameter("option2"));
		System.out.println(request.getParameter("option3"));
		System.out.println(request.getParameter("option4"));
		System.out.println(request.getParameter("option5"));
		System.out.println(request.getParameter("option6"));
		return "result";
	}
}
