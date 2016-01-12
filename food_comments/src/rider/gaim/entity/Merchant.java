package rider.gaim.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 商户
 * @author Administrator
 *
 */
public class Merchant implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer mid;
	private String name;//商户名
	private String aliases;//别名
	private String style;//类型
	private String address;//地址
	private String tel;
	private String cellPhone;
	private String businessHours;//营业时间
	private String busInformation;//公交信息
	private String user_nick;
	private User user;
	
	private Set<Commentary> commentaries;
	private MerchantBriefInfo briefInfo;
	private Set<Photo> photos = new HashSet<Photo>();
	private Business business;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAliases() {
		return aliases;
	}
	public void setAliases(String aliases) {
		this.aliases = aliases;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}
	public String getBusinessHours() {
		return businessHours;
	}
	public void setBusinessHours(String businessHours) {
		this.businessHours = businessHours;
	}
	public String getBusInformation() {
		return busInformation;
	}
	public void setBusInformation(String busInformation) {
		this.busInformation = busInformation;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public MerchantBriefInfo getBriefInfo() {
		return briefInfo;
	}
	public void setBriefInfo(MerchantBriefInfo briefInfo) {
		this.briefInfo = briefInfo;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public Set<Photo> getPhotos() {
		return photos;
	}
	public void setPhotos(Set<Photo> photos) {
		this.photos = photos;
	}
	public Business getBusiness() {
		return business;
	}
	public void setBusiness(Business business) {
		this.business = business;
	}
	public Set<Commentary> getCommentaries() {
		return commentaries;
	}
	public void setCommentaries(Set<Commentary> commentaries) {
		this.commentaries = commentaries;
	}
}
