package com.hunt.model.entity;

import java.util.Date;
/**
 * 
 *服务指南实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Guide {
	private int id;                  //ID
	private String guideName;        //指南名称
	private String guideContent;     //指南内容
	private String author;           //作者
	private Date createTime;         //创建时间
	private Date updateTime;         //修改时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	@Override
	public String toString() {
		return "Guide [id=" + id + ", guideName=" + guideName + ", guideContent=" + guideContent + ", author=" + author
				+ ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
	}
	
	

}
