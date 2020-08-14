package dao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.ApplyList;

public interface ApplyListMapper {

	@Select("select ifnull(max(applyno),0) from applylist")
	int maxnum();

	@Insert("insert into applylist(applyno, userid, classid, classno) values(#{applyno}, #{userid}, #{classid}, #{classno})")
	void insert(ApplyList apply);
}
