package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Class;

public interface TutorMapper {

	@Select({"<script>",
		"select * from class",
		"<if test='state != null'> where state=#{state} </if> ",
		"</script>"})
	List<Class> select(Map<String, Object> param);

	@Select({"<script>",
		"select count(*) from class",
		"<if test='state != null'> where state=#{state} </if>",
		"</script>"})
	int count(Map<String, Object> param);
	
	
}
