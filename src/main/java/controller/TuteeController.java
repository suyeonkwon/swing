package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.WishList;

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
	
	@RequestMapping("wishlist") // 위시리스트 조회
	public ModelAndView wishlist(String userid,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<WishList> wishlist = service.getWishlist(userid);
		for(WishList w : wishlist) {
			w.setStarttime(service.getStartTime(w.getClassid())); // 수업시작일
			w.setParticinum(service.getParticiNum(w.getClassid())); // 참여인원
			w.setStar(service.getStar(w.getClassid())); // 리뷰별점
		}
		mav.addObject("wishlist", wishlist);
		return mav;
	}
	
	@RequestMapping("delete") // 위시리스트 삭제
	public ModelAndView delete(String userid, int classid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		WishList wish = new WishList();
		wish.setUserid(userid);
		wish.setClassid(classid);
		service.wishDelete(wish);
		mav.setViewName("redirect:wishlist.shop?userid=" + userid);
		return mav;
	}
	
	@RequestMapping("classlist")
	public ModelAndView classlist(String userid) {
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
}
