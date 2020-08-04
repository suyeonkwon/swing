package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("user")
public class UserEntryController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*")
	public String userEntryForm(Model model) {
		//email 복호화
		model.addAttribute(new User());
		System.out.println(service.userList());
		return null;
	}
	
	@PostMapping("join")
	public ModelAndView userEntry(@Valid User user, BindingResult bresult) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			bresult.reject("error.input.user");
			return mav;
		}
		try {
			System.out.println("!!!!!!:"+user);
			//1. 비밀번호 : 해쉬알고리즘으로 값을 생성 db에 저장
			//2. 이메일: 암호화하여 db에 저장
			//			키는 userid의 해쉬값의 앞16자리로 설정.
			/*user.setPassword(CipherUtil.makehash(user.getPassword()));
			String userid = CipherUtil.makehash(user.getUserid());
			String email = CipherUtil.encrypt(user.getEmail(), userid.substring(0,16));
			
			user.setEmail(email);*/
			service.userInsert(user);
			mav.setViewName("redirect:login.shop");
		}catch(Exception e) {
			e.printStackTrace();
			bresult.reject("error.duplicate.user");
			mav.getModel().putAll(bresult.getModel());
		}
		return mav;
	}
}
