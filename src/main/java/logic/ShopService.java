package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ClassDao;
import dao.ClassInfoDao;
import dao.ReviewDao;
import dao.UserDao;

@Service
public class ShopService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private ReviewDao reviewDao;
	@Autowired
	private ClassDao classDao;
	@Autowired
	private ClassInfoDao classInfoDao;
	
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

	public Class getClass(Integer classid) {
		return classDao.selectOne(classid);
	}

	public List<Classinfo> getClassInfo(Integer classid) {
		return classInfoDao.select(classid);
	}

	public List<Review> getReview(Integer classid) {
		return reviewDao.select(classid);
	}

}
