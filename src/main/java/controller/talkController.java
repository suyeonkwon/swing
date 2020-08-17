package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.support.SecurityContextProvider;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView detail(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = (User)session.getAttribute("loginUser");
		System.out.println("user name:"+ user.getUserid());
		System.out.println("normal chat page");
		mav.addObject("sessionuser",user);
		return mav;
	}
	
}
