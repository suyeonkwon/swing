package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ReviewDao;
import dao.UserDao;
import dao.WishlistDao;

@Service
public class ShopService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private ReviewDao reviewDao;
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

	public List<Class> getWishlist(String userid) {
		return wishlistDao.list(userid);
	}

}
