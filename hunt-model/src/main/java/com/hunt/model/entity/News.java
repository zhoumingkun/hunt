package com.hunt.model.entity;

import java.io.Serializable;
import java.util.Date;

import com.hunt.model.AbstractModel;

/**
 *  新闻实体类
 * @author admin
 */
public class News extends  AbstractModel implements Serializable {

	private static final long serialVersionUID = 6949167530468798123L;


	// newsName : 新闻名称
	private String newsName;
	
	// newsContent : 新闻内容
	private String newsContent;

	// state : (-1,未发布；1,已发布；2,推广)
	private int state;

	public String getNewsName() {
		return newsName;
	}

	public void setNewsName(String newsName) {
		this.newsName = newsName;
	}

	
	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
	

}
