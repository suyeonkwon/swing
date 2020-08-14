package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.ApplyList;
import logic.Course;

public interface ApplyListMapper {
	
	@Select("SELECT a.applyno, u.nickname 'tutor', u.file 'tutorimg', a.classid, a.classno, " + 
			"c.subject, c.location1, ci.place, c.type, c.totaltime, c.totalprice, " +
			"concat(MIN(ci.DATE),' ',MIN(ci.starttime)) 'startdate', concat(MAX(ci.date),' ',MAX(ci.endtime)) 'enddate', " + 
			"ifnull(COUNT(r.reviewno),0) 'reviewnum', ifnull(AVG(r.star),0) 'star' " + 
			"FROM user u, class c, classinfo ci, applylist a LEFT join review r " + 
			"on r.classid = a.classid " + 
			"WHERE c.classid = a.classid " + 
			"AND c.userid = u.userid " + 
			"AND ci.classid = a.classid " + 
			"AND ci.classno = a.classno " + 
			"AND a.userid = #{userid} " + 
			"GROUP BY ci.classid, ci.classno")
	List<Course> list(String userid);
	
	@Select("select ifnull(max(applyno),0) from applylist")
	int maxnum();

	@Insert("insert into applylist(applyno, userid, classid, classno) values(#{applyno}, #{userid}, #{classid}, #{classno})")
	void insert(ApplyList apply);
}
