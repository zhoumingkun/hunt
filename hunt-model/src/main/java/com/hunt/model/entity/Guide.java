package com.hunt.model.entity;

import java.util.Date;

import com.hunt.model.AbstractModel;
/**
 * 
 *服务指南实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Guide extends AbstractModel{
	private String guideName;        //指南名称
	private String guideContent;     //指南内容
	public String getGuideName() {
		return guideName;
	}
	public void setGuideName(String guideName) {
		this.guideName = guideName;
	}
	public String getGuideContent() {
		return guideContent;
	}
	public void setGuideContent(String guideContent) {
		this.guideContent = guideContent;
	}
	@Override
	public String toString() {
		return "Guide [id=" + id + ", guideName=" + guideName + ", guideContent=" + guideContent + ", author=" + author
				+ ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
	}
	
	

}
