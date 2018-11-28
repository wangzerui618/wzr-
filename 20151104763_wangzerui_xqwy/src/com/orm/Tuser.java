package com.orm;

public class Tuser
{
	private String id;
	private String lou_id;
	private String danyuan;
	private String menpai;
	
	private String mianji;
	private String xingming;
	private String dianhua;
	private String userName;
	
	private String userPw;
	private String del;
	
	private Tlou lou;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLou_id() {
		return lou_id;
	}

	public void setLou_id(String lou_id) {
		this.lou_id = lou_id;
	}

	public String getDanyuan() {
		return danyuan;
	}

	public void setDanyuan(String danyuan) {
		this.danyuan = danyuan;
	}

	public String getMenpai() {
		return menpai;
	}

	public void setMenpai(String menpai) {
		this.menpai = menpai;
	}

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
	}

	public String getMianji() {
		return mianji;
	}

	public void setMianji(String mianji) {
		this.mianji = mianji;
	}

	public String getDianhua() {
		return dianhua;
	}

	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public Tlou getLou() {
		return lou;
	}

	public void setLou(Tlou lou) {
		this.lou = lou;
	}

}
