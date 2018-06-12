package com.hunt.model.entity;

import java.io.Serializable;
import java.util.Date;

import com.hunt.model.AbstractModel;

/**
 * 企业实体类
 * 
 * @author admin
 */
public class Enterprise extends  AbstractModel implements Serializable {

	private static final long serialVersionUID = -4206908875468818312L;

	// enterpriseName : 企业名称
	private String enterpriseName;

	// enterpriseContent : 企业内容
	private String enterpriseContent;

	// image : 图片
	private String image;

	// trade : 行业
	private String trade;

	// state : (-1,未发布；1,已发布；2,推广)
	private int state;

	//enterpriseText : 企业摘要
	private String enterpriseText;
	
	public String getEnterpriseName() {
		return enterpriseName;
	}

	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}

	public String getEnterpriseContent() {
		return enterpriseContent;
	}

	public void setEnterpriseContent(String enterpriseContent) {
		this.enterpriseContent = enterpriseContent;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTrade() {
		return trade;
	}

	public void setTrade(String trade) {
		this.trade = trade;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getEnterpriseText() {
		return enterpriseText;
	}

	public void setEnterpriseText(String enterpriseText) {
		this.enterpriseText = enterpriseText;
	}


}
