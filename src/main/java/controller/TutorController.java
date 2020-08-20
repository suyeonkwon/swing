package controller;

import org.apache.ibatis.binding.BindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import logic.Classinfo;
import logic.Course;
import logic.Class;
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
		Date today = new Date();
		for(int i=0; i<classlist.size(); i++) {
			logic.Class cl = service.getClass(classlist.get(i).getClassid());
			Date classdate = service.getClDate(cl.getClassid());
			if(classdate.before(today)) {
				service.updateState(loginUser.getUserid(),cl.getClassid());
			}
		}
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
	
	@RequestMapping("outcome")
	public ModelAndView outcome(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User) session.getAttribute("loginUser");
		Map<String, Object> map = service.bargraph(loginUser.getUserid());
		mav.addObject("map", map);
		return mav;
	}
	
	@RequestMapping("register-class")
	public ModelAndView registerClassView(Integer classid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		try {
			Class c = service.getClass(classid);
			User tutor = service.getUser(c.getUserid());
			String tutorimg = tutor.getFile();
			int classno = service.maxClassno(classid); 
			Classinfo ci = service.getClassInfoOne(classid,classno,1);
			
			if(classno==1 && ci.getDate()==null) {
			} else {
				classno++;
			}
			mav.addObject("c",c);
			mav.addObject("tutorimg",tutorimg);
			mav.addObject("newclassno",classno);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("registerClassinfo")
	public ModelAndView registerClass(Classinfo ci, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		try {
			Class c = service.getClass(ci.getClassid());
			System.out.println(ci);
			if(c.getType()==1) { // 일일클래스이면
				ci.setClassseq(1);
				System.out.println(ci);
				service.registerClassinfo(ci);
			} else if(c.getType()==2){
				
			}
			
		} catch(BindingException e) {
			e.printStackTrace();
		}
		return mav;
	}
}
