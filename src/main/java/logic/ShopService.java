package logic;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	private WishlistDao wishlistDao;

	
	public List<User> userList() {
		return userDao.list();
	}
	
	public void userInsert(User user) {		
		userDao.insert(user);
	}

	public void reviewWrite(Review review) {
		int max = reviewDao.maxnum();
		review.setReviewno(++max);
		reviewDao.insert(review);
	}

	/*----mypage(Tutor)----*/
	public List<Class> getClassList(Class cl) {
		return tutorDao.list(cl);
	}
	public int classCount(Class cl) {
		return tutorDao.count(cl);
	}	
//	public List<Class> getResultClassList(Class cl) {
//		int confirm = tutorDao.confirm(cl);   // 마지막 차수의 마지막 회차의 진행상태
//		if(confirm == 2) {                  // 마지막 차수의 마지막 회차의 진행상태가 '완료' 일 경우
//			
//		}
//		return tutorDao.rclist(cl);
//	}
	
	

	
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

	

	
	
}
