package dao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Review;

public interface ReviewMapper {
	
	@Select("select ifnull(max(reviewno),0) from review")
	int maxnum();

	@Insert("insert into review(reviewno,userid,classid,classno,classseq,content,star,regdate)"+
			"values(#{reviewno},#{userid},1,1,1,#{content},#{star},now())")
	void insert(Review review);
}
