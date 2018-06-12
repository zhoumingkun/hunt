package com.hunt.model.entity;

import java.io.Serializable;

import com.hunt.model.AbstractModel;
/**
 * 特产实体类
 * 
 * @author admin
 */
public class Specialty extends AbstractModel implements Serializable {

	private static final long serialVersionUID = 6490868241815698764L;

	// specialtyName : 特产名称
	private String specialtyName;

	// specialtyContent : 特产内容
	private String specialtyContent;

	// image : 图片
	private String image;
	
	//specialtytext : 特产摘要
	private String specialtyText;

	public String getSpecialtyName() {
		return specialtyName;
	}

	public void setSpecialtyName(String specialtyName) {
		this.specialtyName = specialtyName;
	}

	public String getSpecialtyContent() {
		return specialtyContent;
	}

	public void setSpecialtyContent(String specialtyContent) {
		this.specialtyContent = specialtyContent;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getSpecialtyText() {
		return specialtyText;
	}

	public void setSpecialtyText(String specialtyText) {
		this.specialtyText = specialtyText;
	}
	
	
}
