package logic;

public class WishList {
	private String userid;
	private int classid;
	
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
	@Override
	public String toString() {
		return "WishList [userid=" + userid + ", classid=" + classid + "]";
	}
}
