package com.hunt.model.entity;

import java.util.Date;

import com.hunt.model.AbstractModel;
/**
 * 
 *概况实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Summarize extends AbstractModel{
	private String louFanName;           //娄烦名称
	private String louFanContent;        //娄烦简介
	private String image;                //图片
	public String getLouFanName() {
		return louFanName;
	}
	public void setLouFanName(String louFanName) {
		this.louFanName = louFanName;
	}
	public String getLouFanContent() {
		return louFanContent;
	}
	public void setLouFanContent(String louFanContent) {
		this.louFanContent = louFanContent;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Summarize [id=" + id + ", louFanContent=" + louFanContent + ", createTime=" + createTime
				+ ", updateTime=" + updateTime + ", image=" + image + "]";
	}
	
	

}
