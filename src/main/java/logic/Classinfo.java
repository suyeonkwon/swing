package logic;


public class Classinfo {
	private int classid; // 수업 아이디
	private int classno; // 수업 차수 
	private int classseq; // 수업 회차
	private String date;
	private String starttime;
	private String endtime;
	private String zipcode;
	private String address;
	private String place;
	private String title;
	private String curri;
	
	//setter, getter
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
	public int getClassseq() {
		return classseq;
	}
	public void setClassseq(int classseq) {
		this.classseq = classseq;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
		return "Classinfo [classid=" + classid + ", classno=" + classno + ", classseq=" + classseq + ", date=" + date
				+ ", starttime=" + starttime + ", endtime=" + endtime + ", zipcode=" + zipcode + ", address=" + address
				+ ", place=" + place + ", title=" + title + ", curri=" + curri + "]";
	}
}
