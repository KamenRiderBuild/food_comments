package rider.gaim.dao.impl;

import rider.gaim.dao.UserDAO;
import rider.gaim.entity.Information;
import rider.gaim.entity.User;

public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO{

	@Override
	public Information getInformationByUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findUserByNickAndPassword(String nick, String userPass) {
		
		return get(" from User u where u.nick = ? and u.userPass = ? ",new Object[] { nick, userPass });
	}
	
}
