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
	
	public List<Class> list(Class cl) {
		param.clear();
		param.put("state", cl.getState());
		return template.getMapper(TutorMapper.class).select(param);
	}

	public int count(Class cl) {
		param.clear();
		param.put("state", cl.getState());
		return template.getMapper(TutorMapper.class).count(param);
	}

//	public List<Class> rclist(Class cl) {
//		param.clear();
//		param.put("seqstate", seqstate);
//		return template.getMapper(TutorMapper.class).rclselect(cl);
//	}

	public int confirm(Class cl) {
		param.clear();
		param.put("classid", cl.getClassid());
		return template.getMapper(TutorMapper.class).confirm(param);
	}

	

	
}
