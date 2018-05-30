package com.hunt.model.entity;

import java.io.Serializable;
import java.util.Date;

import com.hunt.model.AbstractModel;

/**
 * 文化实体类
 * 
 * @author admin
 */
public class Culture extends AbstractModel implements Serializable {

	private static final long serialVersionUID = -7818508817913874803L;

	// cultureName : 文化名称
	private String cultureName;

	// cultureContent : 文化内容
	private String cultureContent;

	// image : 图片
	private String image;

	public String getCultureName() {
		return cultureName;
	}

	public void setCultureName(String cultureName) {
		this.cultureName = cultureName;
	}

	public String getCultureContent() {
		return cultureContent;
	}

	public void setCultureContent(String cultureContent) {
		this.cultureContent = cultureContent;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}