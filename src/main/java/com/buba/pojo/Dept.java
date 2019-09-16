package com.buba.pojo;
public class Dept {
private int id;
private String deptCode;
private String deptName;
private String areaCode;
private int areaId;
private int available;
private String type;
public Dept() {
	super();
}
public Dept(int id, String deptCode, String deptName, String areaCode, int areaId, int available, String type) {
	super();
	this.id = id;
	this.deptCode = deptCode;
	this.deptName = deptName;
	this.areaCode = areaCode;
	this.areaId = areaId;
	this.available = available;
	this.type = type;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getDeptCode() {
	return deptCode;
}
public void setDeptCode(String deptCode) {
	this.deptCode = deptCode;
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
public int getAreaId() {
	return areaId;
}
public void setAreaId(int areaId) {
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
@Override
public String toString() {
	return "Dept [id=" + id + ", deptCode=" + deptCode + ", deptName=" + deptName + ", areaCode=" + areaCode
			+ ", areaId=" + areaId + ", available=" + available + ", type=" + type + "]";
}

}
