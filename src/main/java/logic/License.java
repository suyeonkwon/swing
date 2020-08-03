package logic;

public class License {
	private int lcno;
	private int tutorno;
	private String lctitle;
	private String lcfile;
	
	// getter, setter, toString
	public int getLcno() {
		return lcno;
	}
	public void setLcno(int lcno) {
		this.lcno = lcno;
	}
	public int getTutorno() {
		return tutorno;
	}
	public void setTutorno(int tutorno) {
		this.tutorno = tutorno;
	}
	public String getLctitle() {
		return lctitle;
	}
	public void setLctitle(String lctitle) {
		this.lctitle = lctitle;
	}
	public String getLcfile() {
		return lcfile;
	}
	public void setLcfile(String lcfile) {
		this.lcfile = lcfile;
	}
	@Override
	public String toString() {
		return "License [tutorno=" + tutorno + ", lcno=" + lcno + ", lctitle=" + lctitle + ", lcfile=" + lcfile + "]";
	}
}
