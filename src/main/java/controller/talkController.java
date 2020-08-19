package controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.support.SecurityContextProvider;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import logic.Chatting;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("talk")
public class talkController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*") //  /index.shop 요청시 호출되는 메서드
	public ModelAndView talkForm() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("detail")
	public ModelAndView detail(Integer roomno, Integer classid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = (User)session.getAttribute("loginUser");
		System.out.println("user name:"+ user.getUserid());
		System.out.println("normal chat page");
		mav.addObject("sessionuser",user);
		//mav.setViewName("redirect:detail.shop?roomno="+roomno+"&classid="+classid);
		return mav;
	}
	@ResponseBody
	@RequestMapping(value="talkClose")
	public String talkClose(String TotalJson, HttpSession session) throws ParseException, java.text.ParseException {
		System.out.println(TotalJson);
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj = (JSONObject)jsonParser.parse(TotalJson);
		JSONArray jsonArr = (JSONArray)jsonObj.get("talk");
		System.out.println(jsonArr.toString());
		User user = (User)session.getAttribute("loginUser");
		try {
			for(int i=0; i<jsonArr.size(); i++) {
				JSONObject jsonObject = (JSONObject)jsonArr.get(i);
				System.out.println(jsonObject.toString());
				String chat = jsonObject.get("message").toString();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
				Date date = format.parse(jsonObject.get("date").toString());
				Chatting chatting = new Chatting();
				chatting.setChat(chat);
				chatting.setChatdate(date);
				chatting.setClassid(1);
				chatting.setRoomno(1);
				chatting.setTalkno(1);
				chatting.setUserid(user.getUserid());
				service.addChat(chatting);
			}
			return "1";
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "0";
	}
	
	@RequestMapping("newchat")
	public ModelAndView newchat(String classid) {
		ModelAndView mav = new ModelAndView();
		int max = service.maxroom();
		int roomno = ++max;
		mav.setViewName("redirect:detail.shop?roomno="+roomno+"&classid="+classid);
		return mav;
	}
	
}
