package logic;

import java.util.Date;

public class Classinfo {
	private int classid; // 수업 아이디
	private int classno; // 회차 번호
	private Date date;
	private String starttime;
	private String endtime;
	private String place;
	private String title;
	private String curri;
	
	// getter, setter, toString
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	public int getClassno() {
		return classno;
	}
	public void setClassno(int classno) {
		this.classno = classno;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCurri() {
		return curri;
	}
	public void setCurri(String curri) {
		this.curri = curri;
	}
	@Override
	public String toString() {
		return "Classinfo [classid=" + classid + ", classno=" + classno + ", date=" + date + ", starttime=" + starttime
				+ ", endtime=" + endtime + ", place=" + place + ", title=" + title + ", curri=" + curri + "]";
	}
}
