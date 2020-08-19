package dao.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Chatting;

public interface ChattingMapper {

	@Insert("insert into chatting(roomno,talkno,userid,classid,chat,chatdate)"
			+ "values(#{roomno},#{talkno},#{userid},#{classid},#{chat},#{chatdate})")
	void insert(Chatting chatting);

	@Select("select ifnull(max(roomno),0) from chatting")
	int max();
}
