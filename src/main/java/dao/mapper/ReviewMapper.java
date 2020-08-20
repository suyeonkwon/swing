package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Review;

public interface ReviewMapper {
	
	@Select("select ifnull(max(reviewno),0) from review")
	int maxnum();

	@Insert("insert into review(reviewno,userid,classid,classno,classseq,content,star,regdate)"+
			"values(#{reviewno},#{userid},1,1,1,#{content},#{star},now())")
	void insert(Review review);

	@Select("select * from review where classid=#{classid}")
	List<Review> select(Integer classid);

	@Select("select ifnull(count(*),0) from review where classid=#{classid}")
	int cnt(Integer classid);
}
