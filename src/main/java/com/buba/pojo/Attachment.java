package com.buba.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Attachment {
	private int id;
	private int itemId;
	private String fileextensions;
	private String url;
	private String size;
	private String date;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date shootingtime;
	public Attachment() {
		super();
	}
	public Attachment(int id, int itemId, String fileextensions, String url, String size, String date,
			Date shootingtime) {
		super();
		this.id = id;
		this.itemId = itemId;
		this.fileextensions = fileextensions;
		this.url = url;
		this.size = size;
		this.date = date;
		this.shootingtime = shootingtime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getFileextensions() {
		return fileextensions;
	}
	public void setFileextensions(String fileextensions) {
		this.fileextensions = fileextensions;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Date getShootingtime() {
		return shootingtime;
	}
	public void setShootingtime(Date shootingtime) {
		this.shootingtime = shootingtime;
	}
	@Override
	public String toString() {
		return "Attachment [id=" + id + ", itemId=" + itemId + ", fileextensions=" + fileextensions + ", url=" + url
				+ ", size=" + size + ", date=" + date + ", shootingtime=" + shootingtime + "]";
	}
	
}
