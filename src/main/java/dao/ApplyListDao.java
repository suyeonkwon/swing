package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ApplyListMapper;
import logic.ApplyList;

@Repository
public class ApplyListDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();
	
	public void insert(ApplyList apply) {
		template.getMapper(ApplyListMapper.class).insert(apply);
	}

	public int maxnum() {
		return template.getMapper(ApplyListMapper.class).maxnum();
	}

}
