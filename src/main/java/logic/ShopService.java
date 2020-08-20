package logic;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ClassDao;
import dao.ClassinfoDao;
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
	@Autowired
	private ClassDao classDao;
	@Autowired
	private ClassinfoDao classinfoDao;

	/*----User----*/
	public List<User> userList() {
		return userDao.list();
	}
	
	public void userInsert(User user) {		
		userDao.insert(user);
	}
	public User getUser(String userid) {
		return userDao.selectOne(userid);
	}

	public List<User> userlist(int pageNum, int limit, String column, String find) {
		return userDao.list(pageNum,limit,column,find);
	}

	public void userUpdate(User user) {
		userDao.update(user);
	}
	
	/*----Class----*/
	public List<Class> classlist() {
		return classDao.list();
	}
	
	public List<Class> classlistByState(int state) {
		return classDao.listByState(state);
	}
	public List<Class> classlistByState(int pageNum, int limit,int state) {
		return classDao.listByState(pageNum,limit,state);
	}

	public List<Class> classlistById(String userid) {
		return classDao.listById(userid);
	}

	public void updateState(int classid,int state) {
		classDao.updateState(classid,state);
	}
	
	public void reviewWrite(Review review) {
		int max = reviewDao.maxnum();
		review.setReviewno(++max);
		reviewDao.insert(review);
	}
	
	public List<Integer> getTotalprice() {
		return classDao.selectTotPrice();
	}

	public List<Rank> getTutorRank() {
		return classDao.selectTutorRank();
	}

	public List<Rank> getTuteeRank() {
		return classDao.selectTuteeRank();
	}

	public Map<Object, Object> graph() {
		Map<Object, Object> map = new HashMap<Object, Object>();
		for(Map<Object,Object> m: classDao.graph()) {
			map.put(m.get("date"),m.get("total"));
		}
		return map;
	}
	
	/*----ClassInfo----*/
	public List<Classinfo> classinfolist() {
		return classinfoDao.list();
	}
	
	public List<Classinfo> classinfolistByState(int seqstate) {
		return classinfoDao.listByState(seqstate);
	}

	public List<Classinfo> classinfolistById(String userid) {
		return classinfoDao.listById(userid);
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
}
