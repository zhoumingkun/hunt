package com.hunt.model.entity;

import java.util.Date;
/**
 * 
 *Activity实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Activity {
	private int id;                  //ID
	private String activityName;    //招商活动名称
	private String activityContent; //招商活动内容
	private String author;          //作者
	private Date createTime;        //创建时间
	private Date updateTime;        //修改时间
	private int state;              //状态（-1，未发布，1，已发布，2，推广）
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getActivityName() {
		return activityName;
	}
	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}
	public String getActivityContent() {
		return activityContent;
	}
	public void setActivityContent(String activityContent) {
		this.activityContent = activityContent;
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
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Activity [id=" + id + ", activityName=" + activityName + ", activityContent=" + activityContent
				+ ", author=" + author + ", createTime=" + createTime + ", updateTime=" + updateTime + ", state="
				+ state + "]";
	}
	
	
	
	
	

}
