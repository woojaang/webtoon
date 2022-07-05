package com.woojaang.webtoon_recommendation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woojaang.webtoon_recommendation.model.dao.WebtoonInfoDao;
import com.woojaang.webtoon_recommendation.model.dto.WebtoonInfo;

@Service
public class WebtoonInfoServiceImp implements WebtoonInfoService{

	@Autowired
	WebtoonInfoDao dao;
	
	@Override
	public List<WebtoonInfo> serchMoreThanOne(String[] tags) {
		return dao.serchMoreThanOne(tags);
	}

	@Override
	public List<WebtoonInfo> serchAll(String[] tags) {
		return dao.serchAll(tags);
	}

	@Override
	public WebtoonInfo test(String tag) {
		return dao.test(tag);
	}
	
	@Override
	public WebtoonInfo test2(String[] tag) {
		return dao.test2(tag);
	}
	
	@Override
	public List<WebtoonInfo> test3(String[] tag) {
		return dao.test3(tag);
	}
	

}
