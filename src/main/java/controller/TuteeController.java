package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;

@Controller
@RequestMapping("tutee")
public class TuteeController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*") //  /index.shop 요청시 호출되는 메서드
	public ModelAndView tuteeForm() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
