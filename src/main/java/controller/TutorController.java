package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import javax.servlet.http.HttpSession;

import logic.Classinfo;
import logic.ShopService;

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
	
	@GetMapping("my")
	public ModelAndView my(logic.Class cl) {
		ModelAndView mav = new ModelAndView();
		List<logic.Class> classlist = service.getClassList(cl);
		int classcount = service.classCount(cl);
		mav.addObject("Class", cl);
		mav.addObject("classlist", classlist);
		mav.addObject("classcount", classcount);
		return mav;
	}
	
	@RequestMapping("result")
	public ModelAndView result(logic.Class cl) {
		ModelAndView mav = new ModelAndView();		
		List<logic.Class> classlist = service.getClassList(cl);
//		List<Classinfo> classinfolist = service.getClassInfoList(cl);
		int classcount = service.classCount(cl);
		mav.addObject("Class", cl);
		mav.addObject("classlist", classlist);
//		mav.addObject("classinfolist", classinfolist);
		mav.addObject("classcount", classcount);
		return mav;
	}
}
