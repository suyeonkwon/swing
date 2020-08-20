package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Classinfo;

public interface ClassInfoMapper {
	
	@Select({"<script>",
			"select * from classinfo ",
			"<if test='seqstate != null'> where seqstate=#{seqstate} </if>",
			"</script>"})
	List<Classinfo> select(Map<String, Object> param);

}
