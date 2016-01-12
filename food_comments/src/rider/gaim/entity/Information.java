package rider.gaim.entity;

import java.io.Serializable;

public class Information implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	
	private String info;
	
	private User user;
	
	
	public Information(String info) {
		super();
		this.info = info;
	}

	public Information() {
		// TODO Auto-generated constructor stub
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
}
