package dao;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ChattingMapper;
import logic.Chatting;
import logic.User;

@Repository
public class ChattingDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();
	
	public void insert(Chatting chatting) {
		template.getMapper(ChattingMapper.class).insert(chatting);
	}

	public int maxroom() {
		return template.getMapper(ChattingMapper.class).max();
	}

}
