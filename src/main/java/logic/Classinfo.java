package logic;

import java.util.Date;

public class Classinfo {
	private int classno;
	private int classid;
	private Date date;
	private String starttime;
	private String endtime;
	private String place;
	// getter, setter, toString
	public int getClassno() {
		return classno;
	}
	public void setClassno(int classno) {
		this.classno = classno;
	}
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
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
	@Override
	public String toString() {
		return "Classinfo [classno=" + classno + ", classid=" + classid + ", date=" + date + ", starttime=" + starttime
				+ ", endtime=" + endtime + ", place=" + place + "]";
	}
}
