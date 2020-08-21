package logic;

import java.util.Date;

public class Review {
	private int reviewno;
	private String userid;
	private int classid;
	private int classno;
	private int classseq;
	private String content;
	private double star;
	private Date regdate;	
	//user name, file
	private String name; 
	private String file;
	// getter, setter, toString

	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getStar() {
		return star;
	}
	public void setStar(double star) {
		this.star = star;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "Review [reviewno=" + reviewno + ", userid=" + userid + ", classid=" + classid + ", classno=" + classno
				+ ", classseq=" + classseq + ", content=" + content + ", star=" + star + ", regdate=" + regdate + "]";
	}
}
