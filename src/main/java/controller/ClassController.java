package controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Review;
import logic.ShopService;
import logic.User;
import logic.ApplyList;
import logic.Class;
import logic.Classinfo;
import logic.License;

@Controller
@RequestMapping("class")
public class ClassController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*") //  /index.shop 요청시 호출되는 메서드
	public ModelAndView classForm() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@GetMapping("review")
	public String form(Model model) {
		model.addAttribute(new Review());
		return null;
	}
	
	@PostMapping("review")
	public ModelAndView review(Review review, HttpSession session) {
		ModelAndView mav = new ModelAndView();
//		User loginUser = (User)session.getAttribute("loginUser");
//		review.setUserid(loginUser.getUserid());
		review.setUserid("hong");
		try {
			service.reviewWrite(review);
			mav.setViewName("redirect:detail.shop");
			System.out.println("등록성공");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("등록실패");
		}
		return mav;
	}
	
	@GetMapping("detail")
	public ModelAndView detail(Integer classid) {
		ModelAndView mav = new ModelAndView();
		try {
			Class cls = service.getClass(classid);
			User tutor = service.getUser(cls.getUserid());
			List<Classinfo> clsinfo = service.getClassInfo(classid);
			List<Review> review = service.getReview(classid);
			List<User> reUser = new ArrayList<>();
			List<License> license = service.getLicense(cls.getUserid());
			double sum = 0;
			for(Review re : review) {
				sum+= re.getStar();
				reUser.add(service.getUser(re.getUserid()));
			}
			double starAvg = sum/review.size();
			mav.addObject("cls",cls);
			mav.addObject("tutor",tutor);
			mav.addObject("clsinfo", clsinfo);
			mav.addObject("review",review);
			mav.addObject("starAvg", starAvg);
			mav.addObject("reUser",reUser);
			mav.addObject("license",license);
//			mav.addObject("user",user);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	@RequestMapping("check")
	public ModelAndView check(Integer classid) {
		ModelAndView mav = new ModelAndView();
		try {
			Class cls = service.getClass(classid);
			User tutor = service.getUser(cls.getUserid());			
			List<Classinfo> clsinfo = service.getClassInfo(classid);
			mav.addObject("cls",cls);
			mav.addObject("tutor",tutor);
			mav.addObject("clsinfo", clsinfo);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	@RequestMapping("apply")
	public ModelAndView apply(Integer classid,Integer classno,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		try {
			Class cls = service.getClass(classid);
			User tutor = service.getUser(cls.getUserid());	
			User tutee = (User)session.getAttribute("loginUser");
			mav.addObject("cls",cls);
			mav.addObject("tutor",tutor);
			mav.addObject("tutee",tutee);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	@RequestMapping("paysuccess")
	public ModelAndView paysuccess(Integer classid,Integer classno,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User tutee = (User)session.getAttribute("loginUser");
		try {
			ApplyList apply = new ApplyList();
			apply.setClassid(classid);
			apply.setClassno(classno);
			apply.setUserid(tutee.getUserid());
			service.applyClass(apply);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
}
