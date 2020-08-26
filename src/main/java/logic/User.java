
package logic;

import org.springframework.web.multipart.MultipartFile;

public class User {
	private String userid;
	private String pass;
	private String name;
	private String email;
	private String file;
	private int kbn;
	private String nickname;
	private int edulevel;
	private String school;
	private String major;
	private String edufile;
	private MultipartFile fileurl2;
	private String fileurl;
	// getter, setter, toString
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public int getKbn() {
		return kbn;
	}
	public void setKbn(int kbn) {
		this.kbn = kbn;
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
	public String getFileurl() {
		return fileurl;
	}
	public void setFileurl(String fileurl) {
		this.fileurl = fileurl;
	}
	
	public MultipartFile getFileurl2() {
		return fileurl2;
	}
	public void setFileurl2(MultipartFile fileurl2) {
		this.fileurl2 = fileurl2;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", pass=" + pass + ", name=" + name + ", email=" + email + ", file=" + file
				+ ", kbn=" + kbn + ", nickname=" + nickname + ", edulevel=" + edulevel + ", school=" + school
				+ ", major=" + major + ", edufile=" + edufile + ", fileurl=" + fileurl + "]";
	}
}


