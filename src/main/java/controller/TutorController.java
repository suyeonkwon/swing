package controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Class;
import logic.Course;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("tutor")
public class TutorController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*") //  /index.shop 요청시 호출되는 메서드
	public ModelAndView tutorForm() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@GetMapping("applylist")
	public ModelAndView applylist(Integer classid, Integer classno, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<User> applylist = service.getApplylist(classid,classno);
		Class c = service.getClass(classid);
		
		Course date = service.getClassDate(classid,classno);
		
		mav.addObject("date",date);
		mav.addObject("c",c);
		mav.addObject("applynum",applylist.size());
		mav.addObject("applylist",applylist);
		return mav;
	}
}
