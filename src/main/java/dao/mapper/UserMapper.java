package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.User;

public interface UserMapper {
	@Insert("")
	void insert(User user);
	
	@Select("select * from user")
	List<User> select(Map<String, Object> param);
	
	@Update("")
	void update(User user);
	
	@Delete("")
	void delete(Map<String, Object> param);
}
