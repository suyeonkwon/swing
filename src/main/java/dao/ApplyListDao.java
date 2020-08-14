package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ApplyListMapper;
import logic.ApplyList;
import logic.Course;

@Repository
public class ApplyListDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();
	
	
	public List<Course> clist(String userid) {
		return template.getMapper(ApplyListMapper.class).list(userid);
	}
	
	public void insert(ApplyList apply) {
		template.getMapper(ApplyListMapper.class).insert(apply);
	}

	public int maxnum() {
		return template.getMapper(ApplyListMapper.class).maxnum();
	}

	public int curseq(String userid, Integer applyno) {
		param.clear();
		param.put("userid", userid);
		param.put("applyno", applyno);
		return template.getMapper(ApplyListMapper.class).curseq(param);
	}

}
