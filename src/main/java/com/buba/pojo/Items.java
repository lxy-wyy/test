package com.buba.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Items {
	private String username;
	private String deptName;
	private String areaName;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createtime;
	private int areaId; 
	private int deptId; 
	private int numActivities;
	private String numActual;
	private float zxl;
	private int newClient;
	private int oldClient;
	private int yxClient;
	private Float money;  
	private int id;
	private String available;
	private String areaCode; 
	private int userId;
	private String userCode;
	private String activitiesname;
	public Items() {
		super();
	}
	public Items(int id, String numActual, int newClient, int oldClient, int yxClient, Float money, String available,
			Date createtime, int deptId, int areaId, String areaCode, int userId, String userCode,
			String activitiesname, String username, int numActivities, float zxl, String deptName, String areaName) {
		super();
		this.id = id;
		this.numActual = numActual;
		this.newClient = newClient;
		this.oldClient = oldClient;
		this.yxClient = yxClient;
		this.money = money;
		this.available = available;
		this.createtime = createtime;
		this.deptId = deptId;
		this.areaId = areaId;
		this.areaCode = areaCode;
		this.userId = userId;
		this.userCode = userCode;
		this.activitiesname = activitiesname;
		this.username = username;
		this.numActivities = numActivities;
		this.zxl = zxl;
		this.deptName = deptName;
		this.areaName = areaName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNumActual() {
		return numActual;
	}
	public void setNumActual(String numActual) {
		this.numActual = numActual;
	}
	public int getNewClient() {
		return newClient;
	}
	public void setNewClient(int newClient) {
		this.newClient = newClient;
	}
	public int getOldClient() {
		return oldClient;
	}
	public void setOldClient(int oldClient) {
		this.oldClient = oldClient;
	}
	public int getYxClient() {
		return yxClient;
	}
	public void setYxClient(int yxClient) {
		this.yxClient = yxClient;
	}
	public Float getMoney() {
		return money;
	}
	public void setMoney(Float money) {
		this.money = money;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getActivitiesname() {
		return activitiesname;
	}
	public void setActivitiesname(String activitiesname) {
		this.activitiesname = activitiesname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getNumActivities() {
		return numActivities;
	}
	public void setNumActivities(int numActivities) {
		this.numActivities = numActivities;
	}
	public float getZxl() {
		return zxl;
	}
	public void setZxl(float zxl) {
		this.zxl = zxl;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	@Override
	public String toString() {
		return "Items [id=" + id + ", numActual=" + numActual + ", newClient=" + newClient + ", oldClient=" + oldClient
				+ ", yxClient=" + yxClient + ", money=" + money + ", available=" + available + ", createtime="
				+ createtime + ", deptId=" + deptId + ", areaId=" + areaId + ", areaCode=" + areaCode + ", userId="
				+ userId + ", userCode=" + userCode + ", activitiesname=" + activitiesname + ", username=" + username
				+ ", numActivities=" + numActivities + ", zxl=" + zxl + ", deptName=" + deptName + ", areaName="
				+ areaName + "]";
	} 
	
}
