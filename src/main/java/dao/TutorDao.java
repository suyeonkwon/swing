package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.TutorMapper;
import logic.Class;
import logic.Classinfo;

@Repository
public class TutorDao {
	@Autowired
	private SqlSessionTemplate template;
	Map<String, Object> param = new HashMap<String, Object>();
	
	public List<Class> list(String userid, Integer state) {
		param.clear();
		param.put("userid", userid);
		param.put("state", state);
		return template.getMapper(TutorMapper.class).select(param);
	}

	public int count(String userid, Integer state) {
		param.clear();
		param.put("userid", userid);
		param.put("state", state);
		return template.getMapper(TutorMapper.class).count(param);
	}

	public int confirm(Integer classid) {
		param.clear();
		param.put("classid", classid);
		return template.getMapper(TutorMapper.class).confirm(param);
	}

	public List<Classinfo> classinfolist(Class cl) {
		param.clear();
		param.put("classid", cl.getClassid());
		return template.getMapper(TutorMapper.class).getclassinfo(param);
	}

	

	
}
