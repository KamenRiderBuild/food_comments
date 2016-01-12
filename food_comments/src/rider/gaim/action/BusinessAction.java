package rider.gaim.action;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import rider.gaim.entity.Business;
import rider.gaim.entity.User;
import rider.gaim.exception.ServException;
import rider.gaim.service.BusinessService;

public class BusinessAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BusinessService businessService;
	public BusinessService getBusinessService() {
		return businessService;
	}
	public void setBusinessService(BusinessService businessService) {
		this.businessService = businessService;
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

	//login
	private String username;
	private String password;
	private String securityCode;
	public String getSecurityCode() {
		return securityCode;
	}
	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}
	public String loginOut(){
		Object obj = session.get("loginBusiness");
		if(obj != null){
			session.remove("loginBusiness");
		}
		return "index";
	}
	public String login() {
		try {
			if (securityCode != null
					&& securityCode.equalsIgnoreCase((String) session
							.get("SESSION_SECURITY_CODE"))) {
				Pattern pattern = Pattern
						.compile("^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$");
				Matcher matcher = pattern.matcher(username);
				Business loginUser;
				if (matcher.matches()) {
					loginUser = businessService.findBusinessByEmailAndPass(username, password);
				} else {					
					loginUser = businessService.findBusinessByNameAndPass(username, password);
				}
				if (loginUser != null) {
					session.remove("SESSION_SECURITY_CODE");
					session.put("loginBusiness", loginUser);					
					return "bindex";
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

}
