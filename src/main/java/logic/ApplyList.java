package logic;

public class ApplyList {
	private String userid;
	private int classid;
	private String level;
	private int payment;
	
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
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	@Override
	public String toString() {
		return "ApplyList [userid=" + userid + ", classid=" + classid + ", level=" + level + ", payment=" + payment
				+ "]";
	}
}
