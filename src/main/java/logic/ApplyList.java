package logic;

public class ApplyList {
	private String userid;
	private int classid;
	private String level;
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
	@Override
	public String toString() {
		return "ApplyList [userid=" + userid + ", classid=" + classid + ", level=" + level + "]";
	}
	
	
}
