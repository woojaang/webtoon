package com.woojaang.webtoon_recommendation.model.dto;

import java.io.Serializable;

public class WebtoonInfo implements Serializable, Comparable<WebtoonInfo>{
	private int webtoonNo;
	private String webtoonName;
	private String artist;
	private String star;
    private String completed;
    private String thumbnail;
    private String detailUrl;
    private String detail;
    private String tags;
    
	public WebtoonInfo(int webtoonNo, String artist, String star, String completed, String thumbnail, String detailUrl,
			String detail, String tags) {
		super();
		this.webtoonNo = webtoonNo;
		this.webtoonName = webtoonName;
		this.artist = artist;
		this.star = star;
		this.completed = completed;
		this.thumbnail = thumbnail;
		this.detailUrl = detailUrl;
		this.detail = detail;
		this.tags = tags;
	}

	public int getWebtoonNo() {
		return webtoonNo;
	}

	public void setWebtoonNo(int webtoonNo) {
		this.webtoonNo = webtoonNo;
	}
	
	public String getWebtoonName() {
		return webtoonName;
	}

	public void setWebtoonName(String webtoonName) {
		this.webtoonName = webtoonName;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public String getCompleted() {
		return completed;
	}

	public void setCompleted(String completed) {
		this.completed = completed;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getDetailUrl() {
		return detailUrl;
	}

	public void setDetailUrl(String detailUrl) {
		this.detailUrl = detailUrl;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	@Override
	public int compareTo(WebtoonInfo o) {
		if (Float.parseFloat(this.star)-Float.parseFloat(o.getStar())>0) {
			return -1;
		}
		else {
			return 1;
		}
		
	}
	
	

    
    
}
