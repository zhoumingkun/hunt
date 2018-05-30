package com.hunt.model.entity;

import java.io.Serializable;

import com.hunt.model.AbstractModel;
/**
 * 公告实体类
 * 
 * @author admin
 */
public class Proclamation extends AbstractModel implements Serializable {

	private static final long serialVersionUID = -3964827792316043720L;

	// proclamationName : 公告名称
	private String proclamationName;

	// proclamationContent : 公告内容
	private String proclamationContent;

	// image : 图片
	private String image;

	// trade : 行业
	private int trade;

	public String getProclamationName() {
		return proclamationName;
	}

	public void setProclamationName(String proclamationName) {
		this.proclamationName = proclamationName;
	}

	public String getProclamationContent() {
		return proclamationContent;
	}

	public void setProclamationContent(String proclamationContent) {
		this.proclamationContent = proclamationContent;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getTrade() {
		return trade;
	}

	public void setTrade(int trade) {
		this.trade = trade;
	}
	
	
}
