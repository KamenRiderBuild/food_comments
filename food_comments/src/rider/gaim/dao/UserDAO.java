package rider.gaim.dao;

import rider.gaim.entity.Information;
import rider.gaim.entity.User;

public interface UserDAO extends BaseDAO<User>{
	public Information getInformationByUser(User user);
	public User findUserByNickAndPassword(String nick,	String userPass);
}
