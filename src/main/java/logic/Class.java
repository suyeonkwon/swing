package logic;

public class Class {
	private int classid;
	private String location;
	private int category;
	private String type;
	private int maxtutee;
	private String subject;
	private String coverimg;
	private int price;
	private int time;
	private int totaltime;
	private int totalprice;
	private String tutorintro;
	private String classintro;
	private int readcnt;
	private int tutorno;
	// getter, setter, toString
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getMaxtutee() {
		return maxtutee;
	}
	public void setMaxtutee(int maxtutee) {
		this.maxtutee = maxtutee;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getCoverimg() {
		return coverimg;
	}
	public void setCoverimg(String coverimg) {
		this.coverimg = coverimg;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getTotaltime() {
		return totaltime;
	}
	public void setTotaltime(int totaltime) {
		this.totaltime = totaltime;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public String getTutorintro() {
		return tutorintro;
	}
	public void setTutorintro(String tutorintro) {
		this.tutorintro = tutorintro;
	}
	public String getClassintro() {
		return classintro;
	}
	public void setClassintro(String classintro) {
		this.classintro = classintro;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public int getTutorno() {
		return tutorno;
	}
	public void setTutorno(int tutorno) {
		this.tutorno = tutorno;
	}
	@Override
	public String toString() {
		return "Class [classid=" + classid + ", location=" + location + ", category=" + category + ", type=" + type
				+ ", maxtutee=" + maxtutee + ", subject=" + subject + ", coverimg=" + coverimg + ", price=" + price
				+ ", time=" + time + ", totaltime=" + totaltime + ", totalprice=" + totalprice + ", tutorintro="
				+ tutorintro + ", classintro=" + classintro + ", readcnt=" + readcnt + ", tutorno=" + tutorno + "]";
	}
}
