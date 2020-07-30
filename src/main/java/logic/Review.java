package logic;

import java.util.Date;

public class Review {
	private int reviewno;
	private String content;
	private double star;
	private Date regdate;
	private int classid;
	// getter, setter, toString
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
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
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	@Override
	public String toString() {
		return "Review [reviewno=" + reviewno + ", content=" + content + ", star=" + star + ", regdate=" + regdate
				+ ", classid=" + classid + "]";
	}
}
