package com.hunt.model.entity;

import java.util.Date;

import com.hunt.model.AbstractModel;
/**
 * 
 *招商活动实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Activity extends AbstractModel{
	private String activityName;    //招商活动名称
	private String activityContent; //招商活动内容
	private int state;              //状态（-1，未发布，1，已发布，2，推广）
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
