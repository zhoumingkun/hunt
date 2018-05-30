package com.hunt.model.entity;

import java.util.Date;
/**
 * 
 *Summarize实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Summarize {
	private int id;                    //ID
	private String louFanContent;        //娄烦简介
	private Date createTime;             //创建时间
	private Date updateTime;             //修改时间
	private String image;                //图片
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLouFanContent() {
		return louFanContent;
	}
	public void setLouFanContent(String louFanContent) {
		this.louFanContent = louFanContent;
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
		return "Summarize [id=" + id + ", louFanContent=" + louFanContent + ", createTime=" + createTime
				+ ", updateTime=" + updateTime + ", image=" + image + "]";
	}
	
	

}
