package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import logic.Classinfo;
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
		logic.Class c = service.getClass(classid);
		
		Course date = service.getClassDate(classid,classno);
		
		mav.addObject("date",date);
		mav.addObject("c",c);
		mav.addObject("applynum",applylist.size());
		mav.addObject("applylist",applylist);
		return mav;
	}
	
	@RequestMapping("my")
	public ModelAndView checkmy(Integer state, HttpSession session) {
		ModelAndView mav = new ModelAndView();	
		User loginUser = (User)session.getAttribute("loginUser");
		List<logic.Class> classlist = service.getClassList(loginUser.getUserid(), state);
		int classcount = service.classCount(loginUser.getUserid(), state);
		mav.addObject("classlist", classlist);
		mav.addObject("classcount", classcount);
		return mav;
	}
	
	@RequestMapping("result")
	public ModelAndView result(Integer state, HttpSession session) {
		ModelAndView mav = new ModelAndView();		
		User loginUser = (User)session.getAttribute("loginUser");
		List<logic.Class> classlist = service.getClassList2(loginUser.getUserid(), state);
		int classcount = service.classCount2(loginUser.getUserid(), state);
		List<Classinfo> classinfolist = service.getClassInfoList(loginUser.getUserid(), state);
		List<logic.Class> forConfirmList = service.getClassListforConfirm(loginUser.getUserid());
		Date today = new Date();
		for(int i=0; i<forConfirmList.size(); i++) {
			if(forConfirmList.get(i).getDate().before(today)) {
				forConfirmList.get(i).setState(6);
			}
		}

//		System.out.println(getdate);
//		if(getdate.before(today)) {
//			logic.Class cl = service.getClass(classinfolist.get(classinfolist.size()-1).getClassid());
//			cl.setState(6);
//		}
		mav.addObject("classlist", classlist);
		mav.addObject("classinfolist", classinfolist);
		mav.addObject("classcount", classcount);
		mav.addObject("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		return mav;
	}

	@RequestMapping("classDelete")
	public ModelAndView delete(Integer classid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User) session.getAttribute("loginUser");
		service.classDelete(loginUser.getUserid(),classid);
		mav.setViewName("redirect:/tutor/my.shop");
		return mav;
	}
}
