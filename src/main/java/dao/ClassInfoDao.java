package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ClassInfoMapper;
import logic.Classinfo;

@Repository
public class ClassInfoDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();
	
	public List<Classinfo> select(Integer classid) {
		param.clear();
		param.put("classid", classid);
		return template.getMapper(ClassInfoMapper.class).select(param); 
	}

}
