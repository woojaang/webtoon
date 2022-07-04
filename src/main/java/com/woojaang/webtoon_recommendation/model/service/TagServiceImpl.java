package com.woojaang.webtoon_recommendation.model.service;
import com.woojaang.webtoon_recommendation.model.dao.TagDao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service

public class TagServiceImpl implements TagService{

	@Autowired
	TagDao dao;
	
	@Override
	public List<String> getTags() {
		return dao.getTags();
	}

}
