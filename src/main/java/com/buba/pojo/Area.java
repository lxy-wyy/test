package com.buba.pojo;

public class Area {
private int id;
private String name;
private String pId;
private String isParent;
public Area() {
	super();
}
public Area(int id, String name, String pId, String isParent) {
	super();
	this.id = id;
	this.name = name;
	this.pId = pId;
	this.isParent = isParent;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getpId() {
	return pId;
}
public void setpId(String pId) {
	this.pId = pId;
}
public String getIsParent() {
	return isParent;
}
public void setIsParent(String isParent) {
	this.isParent = isParent;
}
@Override
public String toString() {
	return "Area [id=" + id + ", name=" + name + ", pId=" + pId + ", isParent=" + isParent + "]";
}

}
