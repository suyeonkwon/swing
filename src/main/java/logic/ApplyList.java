package logic;

public class ApplyList {
	private int applyno;
	private String userid;
	private int classid;
	private int classno;
	private int classseq;
	
	// getter, setter, toString
	public int getApplyno() {
		return applyno;
	}
	public void setApplyno(int applyno) {
		this.applyno = applyno;
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
	@Override
	public String toString() {
		return "ApplyList [applyno=" + applyno + ", userid=" + userid + ", classid=" + classid + ", classno=" + classno
				+ ", classseq=" + classseq + "]";
	}
}
