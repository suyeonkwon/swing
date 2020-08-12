package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.License;

public interface LicenseMapper {

	@Select("select * from license where userid=#{userid}")
	List<License> select(Map<String, Object> param);

}
