package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Classinfo;
import logic.Course;

public interface ClassInfoMapper {

	@Select("select * from classinfo where classid=#{classid} and date>now()")
	List<Classinfo> select(Map<String, Object> param);

	@Select("select * from classinfo where classid=#{classid} and classno=#{classno} and classseq=#{classseq}")
	Classinfo selectOne(Map<String, Object> param);
	
	@Select("SELECT MIN(DATE)'startdate',MAX(DATE) 'enddate' " + 
			"FROM classinfo " + 
			"where classid = #{classid} " + 
			"AND classno = #{classno}")
	Course date(Map<String, Object> param);

	@Select("SELECT ifnull(MAX(classno),0) 'classno' " + 
			"FROM classinfo " + 
			"WHERE classid=#{classid}")
	int maxnum(Integer classid);

	@Select("UPDATE classinfo SET DATE=#{date}, starttime=#{starttime}, endtime=#{endtime}, place=#{place} " + 
			"WHERE classid = #{classid} " + 
			"AND classno = #{classno} " + 
			"AND classseq = #{classseq} ")
	void register(Classinfo classinfo);
	
}
