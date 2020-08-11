package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.WishlistMapper;
import logic.Class;
import logic.WishList;


@Repository
public class WishlistDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();
	

//	public int maxnum() {
//		return template.getMapper(WishlistMapper.class).maxnum();
//	}
//
//	public void insert(WishList wish) {
//		template.getMapper(WishlistMapper.class).insert(wish);
//	}

	public List<Class> list(String userid) {
		return template.getMapper(WishlistMapper.class).select(userid);
	}
}