package rider.gaim.entity;

import java.io.Serializable;
import java.util.Date;

public class Commentary implements Serializable{
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	
	private Integer startLv;
	private Integer tasteScocer;//口味分数
	private Integer conditionScocer;
	private Integer serviceScocer;
	private String favoriteDish;
	private String content;
	private Double perCapita;
	private String restaurantFeatures;//特色
	
	private Integer layer;//第几个评论
	private String user_nick;
	private User user;
	private Integer serialNumber;
	private Merchant merchant;
	
	private Date createTime;  
    private Date updateTime;
    
    public Commentary() {
    	setCreateTime(new Date());
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getStartLv() {
		return startLv;
	}
	public void setStartLv(Integer startLv) {
		this.startLv = startLv;
	}
	public Integer getTasteScocer() {
		return tasteScocer;
	}
	public void setTasteScocer(Integer tasteScocer) {
		this.tasteScocer = tasteScocer;
	}
	public Integer getConditionScocer() {
		return conditionScocer;
	}
	public void setConditionScocer(Integer conditionScocer) {
		this.conditionScocer = conditionScocer;
	}
	public Integer getServiceScocer() {
		return serviceScocer;
	}
	public void setServiceScocer(Integer serviceScocer) {
		this.serviceScocer = serviceScocer;
	}
	public Integer getLayer() {
		return layer;
	}
	public void setLayer(Integer layer) {
		this.layer = layer;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Merchant getMerchant() {
		return merchant;
	}
	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
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
	public String getFavoriteDish() {
		return favoriteDish;
	}
	public void setFavoriteDish(String favoriteDish) {
		this.favoriteDish = favoriteDish;
	}
	public Double getPerCapita() {
		return perCapita;
	}
	public void setPerCapita(Double perCapita) {
		this.perCapita = perCapita;
	}
	public String getRestaurantFeatures() {
		return restaurantFeatures;
	}
	public void setRestaurantFeatures(String restaurantFeatures) {
		this.restaurantFeatures = restaurantFeatures;
	}
	public Integer getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(Integer serialNumber) {
		this.serialNumber = serialNumber;
	}
	
    
}
