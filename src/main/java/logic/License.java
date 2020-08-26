package logic;

import java.util.List;

public class License {
	private int lcno;
	private String userid;
	private String lctitle;
	private String lcfile;
	private List<String> lctitlelist;
	private List<String> lcfilelist;
	
	// getter, setter, toString
	public int getLcno() {
		return lcno;
	}
	public void setLcno(int lcno) {
		this.lcno = lcno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	
	public List<String> getLctitlelist() {
		return lctitlelist;
	}
	public void setLctitlelist(List<String> lctitlelist) {
		this.lctitlelist = lctitlelist;
	}
	public List<String> getLcfilelist() {
		return lcfilelist;
	}
	public void setLcfilelist(List<String> lcfilelist) {
		this.lcfilelist = lcfilelist;
	}
	@Override
	public String toString() {
		return "License [lcno=" + lcno + ", userid=" + userid + ", lctitle=" + lctitle + ", lcfile=" + lcfile + "]";
	}
}
