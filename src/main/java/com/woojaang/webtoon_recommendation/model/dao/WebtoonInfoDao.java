package com.woojaang.webtoon_recommendation.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.woojaang.webtoon_recommendation.model.dto.WebtoonInfo;

@Mapper
public interface WebtoonInfoDao {
	public List<WebtoonInfo> serchMoreThanOne(String[] tags); 
	public List<WebtoonInfo> serchAll(String[] tags);
	public WebtoonInfo test(String tag);
	public WebtoonInfo test2(String[] tag);
	public List<WebtoonInfo> test3(String[] tag);
}
