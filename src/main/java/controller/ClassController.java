package controller;

import javax.servlet.http.HttpServletRequest;
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
}
