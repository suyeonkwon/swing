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
import logic.Rank;
import logic.User;

@Repository
public class ClassDao {
	@Autowired
	private SqlSessionTemplate template;
	Map<String, Object> param = new HashMap<String, Object>();
	
	public List<Class> list() {
		return template.getMapper(ClassMapper.class).select(null);
	}
	
	public List<Class> list(int pageNum, int limit) {
		param.clear();
		param.put("start",(pageNum-1)*limit);
		param.put("limit",limit);
		return template.getMapper(ClassMapper.class).select_(param);
	}

	public List<Class> listByState(int state) {
		param.clear();
		param.put("state", state);
		return template.getMapper(ClassMapper.class).select(param);
	}

	public List<Class> listByState(int pageNum, int limit,int state) {
		param.clear();
		param.put("state", state);
		param.put("start",(pageNum-1)*limit);
		param.put("limit",limit);
		return template.getMapper(ClassMapper.class).select_(param);
	}
	
	public List<Class> listById(String userid) {
		param.clear();
		param.put("userid", userid);
		return template.getMapper(ClassMapper.class).select(param);
	}
	
	public void updateState(int classid,int state) {
		param.clear();
		param.put("classid", classid);
		param.put("state", state);
		template.getMapper(ClassMapper.class).updateState(param);
	}

	public List<Classinfo> infolist() {
		return template.getMapper(ClassInfoMapper.class).select(null);
	}

	public List<Integer> selectTotPrice() {
		return template.getMapper(ClassMapper.class).selectPrice();
		
	}

	public List<Rank> selectTutorRank() {
		return template.getMapper(ClassMapper.class).selectTutorRank();
		
	}
	
	public List<Rank> selectTuteeRank() {
		return template.getMapper(ClassMapper.class).selectTuteeRank();
		
	}

	public List<Map<Object, Object>> graph() {
		return template.getMapper(ClassMapper.class).graph();
	}

}
