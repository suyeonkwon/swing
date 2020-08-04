package logic;

public class Tutor {
	private int tutorno;
	private String nickname;
	private int edulevel;
	private String school;
	private String major;
	private String edufile;
	
	// getter, setter, toString
	public int getTutorno() {
		return tutorno;
	}
	public void setTutorno(int tutorno) {
		this.tutorno = tutorno;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getEdulevel() {
		return edulevel;
	}
	public void setEdulevel(int edulevel) {
		this.edulevel = edulevel;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getEdufile() {
		return edufile;
	}
	public void setEdufile(String edufile) {
		this.edufile = edufile;
	}
	@Override
	public String toString() {
		return "Tutor [tutorno=" + tutorno + ", nickname=" + nickname + ", edulevel=" + edulevel + ", school=" + school
				+ ", major=" + major + ", edufile=" + edufile + "]";
	}
}
