package com.hunt.model.entity;

import java.io.Serializable;

import com.hunt.model.AbstractModel;
/**
 * 公告实体类
 * 
 * @author YAO
 */
public class Proclamation extends AbstractModel implements Serializable {

	private static final long serialVersionUID = -3964827792316043720L;

	// proclamationName : 公告名称
	private String proclamationName;

	// proclamationContent : 公告内容
	private String proclamationContent;

	// state : 状态
	private int state;

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

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	
}
