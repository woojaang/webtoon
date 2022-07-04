package com.woojaang.webtoon_recommendation.model.service;

import java.util.List;

import com.woojaang.webtoon_recommendation.model.dto.WebtoonInfo;

public interface WebtoonInfoService {
	List<WebtoonInfo> serchMoreThanOne(String[] tags);
	List<WebtoonInfo> serchAll(String[] tags);
	WebtoonInfo test(String tag);
}
