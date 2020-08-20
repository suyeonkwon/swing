package logic;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ApplyListDao;
import dao.ChattingDao;
import dao.ClassDao;
import dao.ClassInfoDao;
import dao.LicenseDao;
import dao.ReviewDao;
import dao.TutorDao;
import dao.UserDao;
import dao.WishlistDao;

@Service
public class ShopService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private ReviewDao reviewDao;
	@Autowired
	private TutorDao tutorDao;
	@Autowired
	private ClassDao classDao;
	@Autowired
	private ClassInfoDao classInfoDao;
	@Autowired
	private WishlistDao wishlistDao;
	@Autowired
	private LicenseDao licenseDao;
	@Autowired
	private ApplyListDao applylistDao;
	@Autowired
	private ChattingDao chattingDao;

	
	public List<User> userList() {
		return userDao.list();
	}
	
	public void userInsert(User user) {		
		userDao.insert(user);
	}
	public User getUser(String userid) {
		return userDao.selectOne(userid);
	}

	public List<User> userlist() {
		return userDao.list();
	}

	public void userUpdate(User user) {
		userDao.update(user);
	}
	
	public void reviewWrite(Review review) {
		int max = reviewDao.maxnum();
		review.setReviewno(++max);
		reviewDao.insert(review);
	}

	/*----mypage(Tutor)----*/
	public List<Class> getClassList(String userid, Integer state) {		//my.jsp
		return tutorDao.list(userid, state);
	}
	public int classCount(String userid, Integer state) {
		return tutorDao.count(userid, state);
	}	
	public List<Class> getClassList2(String userid, Integer state) {    //result.jsp
		return tutorDao.list2(userid, state);
	}
	public int classCount2(String userid, Integer state) {
		return tutorDao.count2(userid, state);
	}
	public List<Classinfo> getClassInfoList(String userid, Integer state) {
		return tutorDao.classinfolist(userid, state);
	}
	public void classDelete(String userid, Integer classid) {
		tutorDao.delete(userid, classid);
	}
	public Date getClDate(Integer classid) {
		return tutorDao.getClassDate(classid);
	}	
	public void updateState(String userid, int classid) {
		tutorDao.updateState(userid, classid);
	}
	public Map<String, Object> bargraph(String userid) {
		Map<String, Object> map = new HashMap<String, Object>();
		for(Map<String, Object> m : tutorDao.bargraph(userid)) {
			map.put((String) m.get("subject"), m.get("cnt"));
		}
		return map;
	}
//	public List<Class> getClassListforConfirm(String userid, Integer state) {
//		return tutorDao.listforConfirm(userid, state);
//  }
	

	public Class getClass(Integer classid) {
		return classDao.selectOne(classid);
	}

	public List<Classinfo> getClassInfo(Integer classid) {
		return classInfoDao.select(classid);
	}

	public List<Review> getReview(Integer classid) {
		return reviewDao.select(classid);
	}


	
	/*----WishList----*/
	public void wishInsert(WishList wish) {
		wishlistDao.insert(wish);
	}
	public List<WishList> getWishlist(String userid) {
		return wishlistDao.list(userid);
	}
	public Date getStartDate(Integer classid) {
		return wishlistDao.startDate(classid);
	}
	public int getStar(Integer classid) {
		return wishlistDao.star(classid);
	}
	public int getParticiNum(Integer classid) {
		return wishlistDao.particiNum(classid);
	}
	public void wishDelete(WishList wish) {
		wishlistDao.delete(wish);
	}
	/*--tutee_classList--*/
	public List<Course> getCourselist(String userid) {
		return applylistDao.clist(userid);
	}	
	public int getCurseq(String userid, Integer classid,Integer classno) {
		return applylistDao.curseq(userid,classid,classno);
	}


	public List<License> getLicense(String userid) {
		return licenseDao.select(userid);
	}

	public void applyClass(ApplyList apply) {
		int maxnum = applylistDao.maxnum();
		apply.setApplyno(++maxnum);
		applylistDao.insert(apply);
	}


	public List<User> getApplylist(Integer classid, Integer classno) {
		return applylistDao.select(classid,classno);
	}
	public Course getClassDate(Integer classid, Integer classno) {
		return classInfoDao.date(classid,classno);
	}

	public int checkwish(WishList wish) {
		return wishlistDao.checkwish(wish);
	}

	public int classcount(String location1, String location2, Integer type, Integer maxtutee, Integer cate) {
		return classDao.count(location1,location2,type,maxtutee,cate);
	}

	public List<Class> classList(Integer pageNum,Integer sorted, int limit, String location1, String location2, Integer type,
			Integer maxtutee,Integer cate) {
		return classDao.list(pageNum,sorted,limit,location1,location2,type,maxtutee,cate);
	}

	public int getReviewcnt(Integer classid) {
		return reviewDao.cnt(classid);
	}

	public void addChat(Chatting chatting) {
		chattingDao.insert(chatting);	
	}

	public int maxroom() {
		return chattingDao.maxroom();
	}
	

	public int maxClassno(Integer classid) {
		return classInfoDao.maxnum(classid);
	}

	public void registerClassinfo(Classinfo classinfo) {
		classInfoDao.register(classinfo);
	}	
	public Classinfo getClassInfoOne(Integer classid, int classno, int classseq) {
		return classInfoDao.selectOne(classid,classno,classseq);
	}

	

	

	
}
