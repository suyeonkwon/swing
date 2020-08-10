package logic;

import java.util.Date;

public class Chatting {
	private int roomno;
	private int talkno;
	private String userid;
	private int classid;
	private String chat;
	private Date chatdate;
	
	// getter, setter, toString
	public int getRoomno() {
		return roomno;
	}
	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}
	public int getTalkno() {
		return talkno;
	}
	public void setTalkno(int talkno) {
		this.talkno = talkno;
	}
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getChat() {
		return chat;
	}
	public void setChat(String chat) {
		this.chat = chat;
	}
	public Date getChatdate() {
		return chatdate;
	}
	public void setChatdate(Date chatdate) {
		this.chatdate = chatdate;
	}
	@Override
	public String toString() {
		return "Chatting [roomno=" + roomno + ", talkno=" + talkno + ", userid=" + userid + ", classid=" + classid
				+ ", chat=" + chat + ", chatdate=" + chatdate + "]";
	}
}
