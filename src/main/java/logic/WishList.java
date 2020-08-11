package logic;

import java.util.Date;

public class WishList {
	
	private String userid;
	private int classid;
	// 클래스정보
	private String subject;
	private String location2;
	private int type;
	private int totaltime;
	private int totalprice;
	private Date starttime;
	private int particinum;
	private int star;
	
	// getter, setter, toString
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getLocation2() {
		return location2;
	}
	public void setLocation2(String location2) {
		this.location2 = location2;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getTotaltime() {
		return totaltime;
	}
	public void setTotaltime(int totaltime) {
		this.totaltime = totaltime;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public int getParticinum() {
		return particinum;
	}
	public void setParticinum(int particinum) {
		this.particinum = particinum;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	@Override
	public String toString() {
		return "WishList [userid=" + userid + ", classid=" + classid + ", subject=" + subject + ", location2="
				+ location2 + ", type=" + type + ", totaltime=" + totaltime + ", totalprice=" + totalprice
				+ ", starttime=" + starttime + ", particinum=" + particinum + ", star=" + star + "]";
	}
}
