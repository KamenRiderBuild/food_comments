package rider.gaim.service.user.impl;

import java.util.Date;
import java.util.List;

import rider.gaim.dao.UserDAO;
import rider.gaim.entity.Information;
import rider.gaim.entity.User;
import rider.gaim.exception.ServException;
import rider.gaim.service.UserService;

public class UserServiceImpl implements UserService {

	private  UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public String getFirstName() {
		return "rider_"+ (new Date().getTime());
	}
	
	@Override
	public void saveUser(User user) throws ServException {
		try {
			user.setNick(getFirstName());//系统分配默认用户名
			user.setInformation(new Information());
			userDAO.save(user);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("用户添加失败");
		}
	}

	@Override
	public void updateUser(User user) {
		userDAO.update(user);
	}

	@Override
	public User findUserById(int id) {
		return userDAO.get(User.class, id);
	}

	@Override
	public void deleteUser(User user) {
		userDAO.delete(user);
	}

	@Override
	public List<User> findAllList() {
		return userDAO.find(" from User u order by u.createTime");
	}

	@Override
	public User findUserByEmailAndPassword(String userEmail, String userPass)
			throws ServException {
		try {
			return userDAO.get(" from User u where u.userEmail = ? and u.userPass = ? ",new Object[] { userEmail, userPass });
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("用户查找失败");
		}
	}

	@Override
	public User findUserByNickAndPassword(String nick,
			String userPass) throws ServException {
		try {
			return userDAO.findUserByNickAndPassword(nick,userPass);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("用户查找失败");
		}
	}

}