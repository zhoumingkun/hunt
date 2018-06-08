package com.hunt.model.entity;

import java.util.Date;

import com.hunt.model.AbstractModel;
/**
 * 
 *旅游实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Travel extends AbstractModel{
	private String travelName;           //旅游名称
	private String travelContent;        //旅游内容
	private String image;                //图片
	public String getTravelName() {
		return travelName;
	}
	public void setTravelName(String travelName) {
		this.travelName = travelName;
	}
	public String getTravelContent() {
		return travelContent;
	}
	public void setTravelContent(String travelContent) {
		this.travelContent = travelContent;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Travel [id=" + id + ", travelName=" + travelName + ", travelContent=" + travelContent + ", author="
				+ author + ", createTime=" + createTime + ", updateTime=" + updateTime + ", image=" + image + "]";
	}
	

}
