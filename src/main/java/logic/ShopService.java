package logic;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ApplyListDao;
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
	public List<Classinfo> getClassInfoList(Integer classid) {
		return tutorDao.classinfolist(classid);
	}
//	public List<Class> getClassList(Class cl) {
//	int confirm = tutorDao.confirm(cl);   // 마지막 차수의 마지막 회차의 진행상태
//	if(confirm == 0) {                  // 마지막 차수의 마지막 회차의 진행상태가 '완료' 일 경우
//		cl.setState(6);
//	}else {
//		cl.setState(5);
//	}
//	return tutorDao.list(cl);
//}
//public int classCount(Class cl) {
//	return tutorDao.count(cl);
//}	

	

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
	public Date getStartTime(int classid) {
		return wishlistDao.startTime(classid);
	}
	public int getStar(int classid) {
		return wishlistDao.star(classid);
	}
	public int getParticiNum(int classid) {
		return wishlistDao.particiNum(classid);
	}
	public void wishDelete(WishList wish) {
		wishlistDao.delete(wish);
	}


	public List<License> getLicense(String userid) {
		return licenseDao.select(userid);
	}

	public void applyClass(ApplyList apply) {
		int maxnum = applylistDao.maxnum();
		apply.setApplyno(++maxnum);
		applylistDao.insert(apply);
		
	}

	
	
}
