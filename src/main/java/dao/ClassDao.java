package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ClassMapper;
import logic.Class;

@Repository
public class ClassDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();
	
	public Class selectOne(Integer classid) {
		param.clear();
		param.put("classid", classid);
		return template.getMapper(ClassMapper.class).selectOne(param).get(0); 
	}
}
