package com.hunt.model.entity;

import java.util.Date;
/**
 * 
 *Travel实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Travel {
	private int id;                      //ID
	private String travelName;           //旅游名称
	private String travelContent;        //旅游内容
	private String author;               //作者
	private Date createTime;             //创建时间
	private Date updateTime;             //修改时间
	private String image;                //图片
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
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
