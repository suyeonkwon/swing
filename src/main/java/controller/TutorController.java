package controller;

import org.apache.ibatis.binding.BindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import logic.Classinfo;
import logic.Course;
import logic.License;
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
	
	
	/* 수업 등록 페이지 접근시 작성 중인 수업 정보가 있는지 확인
	 * 
	 */
	@RequestMapping("register")
	public ModelAndView register(HttpSession session, String cid) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User)session.getAttribute("loginUser");
		String userid = loginUser.getUserid();
//		try {
		User user = service.getUser(userid);
		License license = service.getLicense(userid).get(0); //service.getLicense(userid).get(0);
		Class clas = new Class();
		int classid = 0;
		if( service.classTemp(userid) != null) {
			classid = service.classTemp(userid);
			clas = service.getClass(classid);
		};
		
		System.out.println(user.toString());
		System.out.println(license.toString());
		System.out.println(clas.toString());
		
		mav.addObject("license", license);
		mav.addObject("user",user);
		mav.addObject("clas",clas);
		mav.addObject("cid",classid);
		
		return mav;
	}
	
	/* 수업 등록 
	 1.유저 정보 update 2. 자격증 정보 insert 3. 수업 정보 insert
	 @RequestParam Map<String,Object> map
	*/
	@PostMapping("classEntry")
	public ModelAndView classEntry(User user, License license, Class clas, String button, Integer cid, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		User loginUser = (User)session.getAttribute("loginUser");
		String userid = loginUser.getUserid();
		user.setUserid(userid);
		license.setUserid(userid);
		clas.setUserid(userid);
		clas.setTotalprice(clas.getPrice()*clas.getTime()*clas.getTotaltime());
		
		if(button.equals("미리보기")) {
			// 새창 열림
			return mav;
		}else if(button.equals("임시저장")) {
			user.setKbn(1); // kbn(회원구분정보) : 1. 튜티 , 2.튜터
			clas.setState(1); // state : 1.등록진행중 2.승인대기
			
			// 유저 정보 업데이트
			service.userUpdate2(user);  
			// 자격증 정보 insert
			int cnt = service.licenseCnt();
			license.setLcno(++cnt);
			service.licenseInsert(license);
			
			if(cid == 0) { // 새로 만들어지는 수업이라면 class insert
				int cnt2 = service.classCnt();
				cid = cnt2 + 1;
				clas.setClassid(cnt2+1);
				service.classInsert(clas);
				// classid 알아내서 임시저장시 보내야함
				//cid = service.classTemp(userid);
				//license.setClassid(cid);
				//service.licenseInsert(license);
			}else { // 원래 임시저장된 수업이라면 class update
				clas.setClassid(cid);
				service.classUpdate(clas);
				//license.setClassid(cid);
				//service.licenseUpdate(license);
			}
			
			System.out.println(user.toString());
			System.out.println(clas.toString());
			System.out.println(license.toString());
			
			mav.setViewName("/alert");
			mav.addObject("msg","임시저장 되었습니다.");
			mav.addObject("url", "register.shop"); 
			return mav;
			
		}else if(button.equals("승인요청")) {
			user.setKbn(2);
			clas.setState(2);
			
			// 유저 정보 업데이트
			service.userUpdate2(user);  
			// 자격증 정보 insert
			int cnt = service.licenseCnt();
			license.setLcno(++cnt);
			service.licenseInsert(license);
			
			if(cid == 0) { // 새로 만들어지는 수업이라면 class insert
				int cnt2 = service.classCnt();
				cid = cnt2 + 1;
				clas.setClassid(cnt2+1);
				service.classInsert(clas);
				// classid 알아내서 임시저장시 보내야함
				//cid = service.classTemp(userid);
				//license.setClassid(cid);
				//service.licenseInsert(license);
			}else { // 원래 임시저장된 수업이라면 class update
				clas.setClassid(cid);
				service.classUpdate(clas);
				//license.setClassid(cid);
				//service.licenseUpdate(license);
			}
			System.out.println(user.toString());
			System.out.println(clas.toString());
			System.out.println(license.toString());
			
			mav.setViewName("/alert");
			mav.addObject("msg","승인요청 되었습니다.");
			mav.addObject("url","register.shop");
			return mav;
		}
		return mav;
			
//		/* 1. 유저 정보 update
//		 * : 회원가입시 file 과 겹치는데 어떻게?
//		 *   학력 (edulevel) 은 뭐야?
//		 *   회원구분정보(kbn) : 1.튜티 2.튜터 업뎃 필요
//		 */
//		
//		/* 2. 자격증 정보 insert
//		 *    한사람당 자격증 하나인지? : 여러개면 자격증 테이블에 수업id 필요 , 그럼 insert 인지 update 인지
//		 *    자격증 id 자동생성?
//		 */
//		
//		/* 3. 수업 정보 insert
//		 * : classid 설정, userid 설정 필요
//		 *   readcnt(0), state(1.등록진행중 2.승인대기), regdate(now) 는 쿼리에서 설정
//		 */
	}
}
