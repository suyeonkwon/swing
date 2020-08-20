package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Class;
import logic.Rank;
import logic.User;

public interface ClassMapper {
	
	@Select({"<script>",
			"select * from class ",
			"<if test='userid != null'> where userid=#{userid} </if>",
			"<if test='classid != null'> where classid=#{classid} </if>",
			"<if test='state != null'> where state=#{state} </if>",
			"</script>"})
	List<Class> select(Map<String, Object> param);
	
	@Select({"<script>",
		"select * from class",
		"<if test='userid != null'> where userid=#{userid} </if>",
		"<if test='classid != null'> where classid=#{classid} </if>",
		"<if test='state != null'> where state=#{state} </if>",
		"<choose>",
		"<when test='num != null'>where num=#{num}</when>",
		"<otherwise> "
		+"limit #{start},#{limit}</otherwise>",
		"</choose>",
		"</script>"})
	List<Class> select_(Map<String, Object> param);
	
	@Update("update class set state=#{state} where classid=#{classid}")
	void updateState(Map<String, Object> param);

	@Select("	SELECT sum(c.totalprice) tot1 FROM class c, applylist u " + 
			"	WHERE c.classid = u.classid " + 
			"	AND YEAR(u.applydate)=YEAR(NOW()) AND MONTH(u.applydate)=MONTH(NOW())-1 " + 
			"	union " + 
			"	SELECT sum(c.totalprice) tot2 FROM class c, applylist u " + 
			"	WHERE c.classid = u.classid " + 
			"	AND YEAR(u.applydate)=YEAR(NOW()) AND MONTH(u.applydate)=MONTH(NOW()) " + 
			"	union " + 
			"	SELECT SUM(c.totalprice) tot3 FROM class c, applylist u " + 
			"	WHERE c.classid = u.classid ")
	List<Integer> selectPrice();
	
	@Select(" SELECT RANK() OVER (ORDER BY SUM(c.totalprice) DESC) AS rank, " + 
			" sum(c.totalprice) totalprice, c.userid userid FROM class c, applylist u " + 
			" WHERE c.classid = u.classid AND YEAR(u.applydate)=YEAR(NOW()) AND MONTH(u.applydate)=MONTH(NOW()) " + 
			" GROUP BY c.userid ")
	List<Rank> selectTutorRank();

	@Select(" SELECT RANK() OVER (ORDER BY SUM(c.totalprice) DESC) AS rank, " + 
			" sum(c.totalprice) totalprice, u.userid userid FROM class c, applylist u " + 
			" WHERE c.classid = u.classid AND YEAR(u.applydate)=YEAR(NOW()) AND MONTH(u.applydate)=MONTH(NOW()) " + 
			" GROUP BY u.userid ")
	List<Rank> selectTuteeRank();
	
	

	@Select(" SELECT month(u.applydate) date,SUM(c.totalprice) total FROM class c, applylist u " + 
			" WHERE c.classid = u.classid AND YEAR(u.applydate)=YEAR(NOW()) " + 
			" GROUP BY u.applydate " + 
			" ORDER BY u.applydate ")	
	List<Map<Object, Object>> graph();
	
}
