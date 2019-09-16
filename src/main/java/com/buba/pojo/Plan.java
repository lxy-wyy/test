package com.buba.pojo;



import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Plan {
private int id;
private int numActivities;
private int deptId;
private String deptName;
private String areaCode;
private String areaId;
private int available;
private String type;
@DateTimeFormat(pattern="yyyy-MM-dd")
private Date startTime;
@DateTimeFormat(pattern="yyyy-MM-dd")
private Date endTime;
private String activitiesname;
private String timestamp;
public Plan() {
	super();
}
public Plan(int id, int numActivities, int deptId, String deptName, String areaCode, String areaId, int available,
		String type, Date startTime, Date endTime, String activitiesname, String timestamp) {
	super();
	this.id = id;
	this.numActivities = numActivities;
	this.deptId = deptId;
	this.deptName = deptName;
	this.areaCode = areaCode;
	this.areaId = areaId;
	this.available = available;
	this.type = type;
	this.startTime = startTime;
	this.endTime = endTime;
	this.activitiesname = activitiesname;
	this.timestamp = timestamp;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getNumActivities() {
	return numActivities;
}
public void setNumActivities(int numActivities) {
	this.numActivities = numActivities;
}
public int getDeptId() {
	return deptId;
}
public void setDeptId(int deptId) {
	this.deptId = deptId;
}
public String getDeptName() {
	return deptName;
}
public void setDeptName(String deptName) {
	this.deptName = deptName;
}
public String getAreaCode() {
	return areaCode;
}
public void setAreaCode(String areaCode) {
	this.areaCode = areaCode;
}
public String getAreaId() {
	return areaId;
}
public void setAreaId(String areaId) {
	this.areaId = areaId;
}
public int getAvailable() {
	return available;
}
public void setAvailable(int available) {
	this.available = available;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public Date getStartTime() {
	return startTime;
}
public void setStartTime(Date startTime) {
	this.startTime = startTime;
}
public Date getEndTime() {
	return endTime;
}
public void setEndTime(Date endTime) {
	this.endTime = endTime;
}
public String getActivitiesname() {
	return activitiesname;
}
public void setActivitiesname(String activitiesname) {
	this.activitiesname = activitiesname;
}
public String getTimestamp() {
	return timestamp;
}
public void setTimestamp(String timestamp) {
	this.timestamp = timestamp;
}
@Override
public String toString() {
	return "Plan [id=" + id + ", numActivities=" + numActivities + ", deptId=" + deptId + ", deptName=" + deptName
			+ ", areaCode=" + areaCode + ", areaId=" + areaId + ", available=" + available + ", type=" + type
			+ ", startTime=" + startTime + ", endTime=" + endTime + ", activitiesname=" + activitiesname
			+ ", timestamp=" + timestamp + "]";
}

}
