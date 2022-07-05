package com.woojaang.webtoon_recommendation.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import com.woojaang.webtoon_recommendation.model.dto.WebtoonInfo;
import com.woojaang.webtoon_recommendation.model.service.TagServiceImpl;
import com.woojaang.webtoon_recommendation.model.service.WebtoonInfoServiceImp;

@Controller
public class MainController {

	@Autowired
	private TagServiceImpl tservice;
	
	@Autowired
	private WebtoonInfoServiceImp wservice;
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/find")
	public ModelAndView find() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("find");
		List<String> list = tservice.getTags();
		mv.addObject("tags", list);
		return mv;
	}
	
	@PostMapping("/result")
	public ModelAndView result(HttpServletRequest request) {
		String[] arr = request.getParameterValues("checkedValue");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		String[] a = {"무료","개그"};
		List<WebtoonInfo> wi = wservice.test3(a);
		System.out.println(wi.get(0).getWebtoonName());
		System.out.println(wi.get(1).getWebtoonName());
		mv.addObject("wi", wi);
		return mv;
	}
}
