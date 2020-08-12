package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Class;

public interface ClassMapper {

	@Select({"<script>",
		"select * from class",
		"<if test='classid!=null'> where classid=#{classid} </if>",
		"</script>"})
	List<Class> selectOne(Map<String, Object> param);

}
