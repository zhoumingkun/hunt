package com.hunt.model.entity;

import java.util.Date;

import com.hunt.model.AbstractModel;
/**
 * 
 *招商项目实体类
 * @Author: zmk
 * @Date : 2018/5/30
 */
public class Project extends AbstractModel{
	private String projectName;        //项目名称
	private String projectContent;     //项目描述
	private int type;                 //项目类型（工业类，农业类，商贸物流类，文化旅游类，金融及交通类设施，城市公用设施）
	private int state;                 //状态（-1，未发布，1，已发布，2，推广 ，3，重点项目）
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
	public int getType() {
		return type;
	}
	public void setType(int type) {
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
