package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Classinfo;

public interface ClassInfoMapper {

	@Select("select * from classinfo where classid=#{classid} and date>now()")
	List<Classinfo> select(Map<String, Object> param);
	
}
