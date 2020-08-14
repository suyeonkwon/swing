package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Class;
import logic.Classinfo;

public interface TutorMapper {

	@Select({"<script>",
		"select c.classid, c.userid, c.subject, c.coverimg, c.location1, c.location2, c.regdate, c.state, u.name, u.nickname, i.date",
		" from class c join user u on c.userid=u.userid join classinfo i on c.classid=i.classid",
		" where c.userid=#{userid} and u.kbn=2 and i.classno = 1 and i.classseq = 1",
//		"<if test='state == null'> and c.state < 5 </if>",
		"<if test='state == null'> and c.state <![CDATA[<]]> 5 </if>",
		"<if test='state != null'> and c.state=#{state} </if> ",
		"</script>"})
	List<Class> select(Map<String, Object> param);

	@Select({"<script>",
		"select c.classid, c.userid, c.subject, c.coverimg, c.location1, c.location2, c.regdate, c.state, u.name, u.nickname, i.date",
		" from class c join user u on c.userid=u.userid join classinfo i on c.classid=i.classid",
		" where c.userid=#{userid} and u.kbn=2 and i.classno = 1 and i.classseq = 1",
//		"<if test='state == null'> and c.state > 4 </if>",
		"<if test='state == null'> and c.state <![CDATA[>]]> 4 </if>",
		"<if test='state != null'> and c.state=#{state} </if> ",
		"</script>"})
	List<Class> select2(Map<String, Object> param);
	
	@Select({"<script>",
		"select count(*) from class where userid=#{userid}",
//		"<if test='state == null'> and c.state < 5 </if>",
		"<if test='state == null'> and state <![CDATA[<]]> 5 </if>",
		"<if test='state != null'> and state=#{state} </if> ",
		"</script>"})
	int count(Map<String, Object> param);
	
	@Select({"<script>",
		"select count(*) from class where userid=#{userid}",
//		"<if test='state == null'> and c.state > 4 </if>",
		"<if test='state == null'> and state <![CDATA[>]]> 4 </if>",
		"<if test='state != null'> and state=#{state} </if> ",
		"</script>"})
	int count2(Map<String, Object> param);
	
	@Select("SELECT COUNT(*) FROM classinfo where classid=#{param} AND DATE>NOW()")
	int confirm(Map<String, Object> param);

	@Select("select * from classinfo where classid=#{param}")
	List<Classinfo> getclassinfo(Map<String, Object> param);

	
	

	
}
