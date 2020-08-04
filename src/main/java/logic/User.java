package logic;

public class User {
	private String userid;
	private int tutorno;
	private String pass;
	private String name;
	private String email;
	private String file;
	
	// getter, setter, toString
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getTutorno() {
		return tutorno;
	}
	public void setTutorno(int tutorno) {
		this.tutorno = tutorno;
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
	@Override
	public String toString() {
		return "User [userid=" + userid + ", tutorno=" + tutorno + ", pass=" + pass + ", name=" + name + ", email="
				+ email + ", file=" + file + "]";
	}
}

