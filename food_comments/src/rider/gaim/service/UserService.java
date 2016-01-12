package rider.gaim.service;

import java.util.List; 

import rider.gaim.entity.User;  
import rider.gaim.exception.ServException;
  
public interface UserService {  
  
    public void saveUser(User user) throws ServException;  
      
    public void updateUser(User user);  
      
    public User findUserById(int id);  
      
    public void deleteUser(User user);  
      
    public List<User> findAllList();  
      
    public User findUserByEmailAndPassword(String userEmail, String userPass)throws ServException;
    
    public User findUserByNickAndPassword(String nick, String userPass)throws ServException;
}  