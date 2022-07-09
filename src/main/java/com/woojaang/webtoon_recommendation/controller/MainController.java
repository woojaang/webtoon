package com.woojaang.webtoon_recommendation.controller;

import java.util.List;
import java.util.Collections;

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
	
	@PostMapping("/resultOne")
	public ModelAndView resultOne(HttpServletRequest request) {
		String[] arr = request.getParameterValues("checkedOne");
		ModelAndView mv = new ModelAndView();
		List<WebtoonInfo> wi = wservice.serchMoreThanOne(arr);
		if (wi.isEmpty()) {
			mv.setViewName("resultNull");
		}
		else {
			mv.setViewName("resultOne");
		}
		Collections.sort(wi);
		mv.addObject("tags", arr);
		mv.addObject("wi", wi);
		return mv; 
	}
	
	@PostMapping("/resultAll")
	public ModelAndView resultAll(HttpServletRequest request) {
		String[] arr = request.getParameterValues("checkedAll");
		ModelAndView mv = new ModelAndView();
		List<WebtoonInfo> wi = wservice.serchAll(arr);
		if (wi.isEmpty()) {
			mv.setViewName("resultNull");
		}
		else {
			mv.setViewName("resultAll");
		}
		Collections.sort(wi);
		mv.addObject("tags", arr);
		mv.addObject("wi", wi);
		return mv;
	}
	

}
