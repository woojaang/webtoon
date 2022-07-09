package com.woojaang.webtoon_recommendation;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class WebtoonRecommendationApplication extends SpringBootServletInitializer{

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(WebtoonRecommendationApplication.class);
	}
	
	
	public static void main(String[] args) {
		SpringApplication.run(WebtoonRecommendationApplication.class, args);
	}

}
