package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.TutorMapper;
import logic.Class;

@Repository
public class TutorDao {
	@Autowired
	private SqlSessionTemplate template;
	Map<String, Object> param = new HashMap<String, Object>();
	
	public List<Class> list(Integer state) {
		param.clear();
		param.put("state", state);
		return template.getMapper(TutorMapper.class).select(param);
	}

	public int count(Integer state) {
		param.clear();
		param.put("state", state);
		return template.getMapper(TutorMapper.class).count(param);
	}
	
}
