package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("admin")
public class adminController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*") //  /index.shop 요청시 호출되는 메서드
	public ModelAndView adminForm() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("userlist")
	public ModelAndView userList(HttpServletRequest request,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<User> userList = service.userlist();
		try {
			/*for(User u: userList) {
				String userid = CipherUtil.makehash(u.getUserid());
				String email = CipherUtil.decrypt(u.getEmail(),userid.substring(0,16));
				u.setEmail(email);
			}*/
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("list", userList);
		return mav;
	}
}
