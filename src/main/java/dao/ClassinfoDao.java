package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ClassInfoMapper;
import dao.mapper.ClassMapper;
import dao.mapper.UserMapper;
import logic.Class;
import logic.Classinfo;
import logic.User;

@Repository
public class ClassinfoDao {
	@Autowired
	private SqlSessionTemplate template;
	Map<String, Object> param = new HashMap<String, Object>();
	
	public List<Classinfo> list() {
		return template.getMapper(ClassInfoMapper.class).select(null);
	}

	public List<Classinfo> listByState(int seqstate) {
		param.clear();
		param.put("seqstate", seqstate);
		return template.getMapper(ClassInfoMapper.class).select(param);
	}

	public List<Classinfo> listById(String userid) {
		param.clear();
		param.put("userid", userid);
		return template.getMapper(ClassInfoMapper.class).select(param);
	}
	
	public List<Classinfo> infolist() {
		return template.getMapper(ClassInfoMapper.class).select(null);
	}
}
