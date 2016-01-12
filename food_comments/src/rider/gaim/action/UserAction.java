package rider.gaim.action;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import rider.gaim.entity.User;
import rider.gaim.exception.ServException;
import rider.gaim.service.UserService;

public class UserAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
	//login
	private String username;
	private String password;
	//regist
	private User user;
	private String cpass;
	private String securityCode;
	
	public String findInformation(){
		
		
		return SUCCESS;
	}
	public String loginOut(){
		Object obj = session.get("loginUser");
		if(obj != null){
			session.remove("loginUser");
		}
		return "index";
	}
	public String login() {
		try {
			System.err.println("login-----");
			if (securityCode != null
					&& securityCode.equalsIgnoreCase((String) session
							.get("SESSION_SECURITY_CODE"))) {
				Pattern pattern = Pattern
						.compile("^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$");
				Matcher matcher = pattern.matcher(username);
				User loginUser;
				if (matcher.matches()) {
					loginUser = userService.findUserByEmailAndPassword(username, password);
				} else {					
					loginUser = userService.findUserByNickAndPassword(username, password);
				}
				if (loginUser != null) {
					session.remove("SESSION_SECURITY_CODE");
					session.put("loginUser", loginUser);					
					return "index";
				} else {
					addActionError("用户名或密码错误");
				}
			} else {
				addActionError("验证码错误");
			}
		} catch (ServException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return "error";
	}

	public String regist() {
		try {
			if (securityCode != null
					&& securityCode.equalsIgnoreCase((String) session
							.get("SESSION_SECURITY_CODE"))) {
				if (cpass.equals(user.getUserPass())) {
					userService.saveUser(user);
					return "login";
				} else {
					System.out.println("密码不一致");
				}
			} else {
				System.out.println("验证码错误");
			}
		} catch (ServException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		return ERROR;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCpass() {
		return cpass;
	}

	public void setCpass(String cpass) {
		this.cpass = cpass;
	}

	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}
}
