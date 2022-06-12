package com.woojaang.webtoon_recommendation.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TagDao {
	public List<String> getTags();
}