package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ReviewMapper;
import logic.Review;

@Repository
public class ReviewDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();
	

	public int maxnum() {
		return template.getMapper(ReviewMapper.class).maxnum();
	}

	public void insert(Review review) {
		template.getMapper(ReviewMapper.class).insert(review);
	}}
