package com.hunt.model.entity;

import java.util.Date;
/**
 * 
 *Project实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Project {
	private int id;                    //ID
	private String projectName;        //项目名称
	private String projectContent;     //项目描述
	private String author;             //作者
	private Date createTime;           //创建时间
	private Date updateTime;           //修改时间
	private String type;               //项目类型（工业类，农业类，商贸物流类，文化旅游类，金融及交通类设施，城市公用设施）
	private int state;                 //状态（-1，未发布，1，已发布，2，推广 ，3，重点项目）
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectContent() {
		return projectContent;
	}
	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
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
	@Override
	public String toString() {
		return "Project [id=" + id + ", projectName=" + projectName + ", projectContent=" + projectContent + ", author="
				+ author + ", createTime=" + createTime + ", updateTime=" + updateTime + ", type=" + type + ", state="
				+ state + "]";
	}
	
	
	

}
