package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Class;

public interface TutorMapper {

	@Select({"<script>",
		"select c.classid, c.userid, c.subject, c.coverimg, c.location1, c.location2, c.regdate, c.state, u.name, u.nickname, i.date",
		" from class c join user u on c.userid=u.userid join classinfo i on c.classid=i.classid",
		" where u.kbn=2 and i.classno = 1 and i.classseq = 1",
		"<if test='state > 0'> and c.state=#{state} </if> ",
		"</script>"})
	List<Class> select(Map<String, Object> param);

	@Select({"<script>",
		"select count(*) from class",
		"<if test='state > 0'> where state=#{state} </if>",
		"</script>"})
	int count(Map<String, Object> param);
	
	
}
