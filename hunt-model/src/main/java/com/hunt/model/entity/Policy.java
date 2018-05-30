package com.hunt.model.entity;

import java.io.Serializable;
import java.util.Date;

import com.hunt.model.AbstractModel;
/**
 * 招商政策实体类
 * 
 * @author admin
 */
public class Policy extends  AbstractModel implements Serializable {

	private static final long serialVersionUID = 5968805638117040942L;


	// policyName : 招商政策名称
	private String policyName;

	// policyContent : 招商政策内容
	private String policyContent;

	// type : 政策类型（政策法规 区具政策）
	private String type;

	// state : (-1,未发布；1,已发布；2,推广)
	private int state;

	public String getPolicyName() {
		return policyName;
	}

	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}

	public String getPolicyContent() {
		return policyContent;
	}

	public void setPolicyContent(String policyContent) {
		this.policyContent = policyContent;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
}
