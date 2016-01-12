package rider.gaim.entity;

import java.io.Serializable;
import java.util.Date;  
import java.util.Set;

public class User implements Serializable{  
  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;  
    private String userEmail;  
    private String userPass;
    private String nick;//昵称 不能为空
	private Integer gender;//性别 1为男，0为女
	private String city;//常居地 不能为空
	private String personalProfile;//个人简介
    private Date createTime;  
    private Date updateTime;
    
    private Information information;//其他信息
    
    private Set<Merchant> mers;//商户
    private Set<Commentary> commentaries;
    
    public User(){
    	setCreateTime(new Date());
    }
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPersonalProfile() {
		return personalProfile;
	}

	public void setPersonalProfile(String personalProfile) {
		this.personalProfile = personalProfile;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Set<Merchant> getMers() {
		return mers;
	}

	public void setMers(Set<Merchant> mers) {
		this.mers = mers;
	}
	public Information getInformation() {
		return information;
	}
	public void setInformation(Information information) {
		this.information = information;
	}

	public Set<Commentary> getCommentaries() {
		return commentaries;
	}

	public void setCommentaries(Set<Commentary> commentaries) {
		this.commentaries = commentaries;
	}
}  