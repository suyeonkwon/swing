package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import logic.Class;

public interface WishlistMapper {
	@Select("SELECT * from class c LEFT JOIN wishlist w " + 
			"ON c.classid = w.classid " + 
			"WHERE w.userid = #{userid}")
	List<Class> select(String userid);

}
