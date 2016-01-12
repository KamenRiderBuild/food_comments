package rider.gaim.entity;

import java.io.Serializable;

public class MerchantBriefInfo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer mid;
	private String merchantName;
	private String address;
	private Double startLv;
	private Integer commentaryCount = 0;
	private Double perCapita = 0.0;
	private Double tasteScocer;//口味分数
	private Double conditionScocer;
	private Double serviceScocer;
	
	private Merchant merchant;
	
	public MerchantBriefInfo(Integer mid) {
		this.mid = mid;
	}	
	public MerchantBriefInfo(Integer mid, String merchantName, String address) {
		super();
		this.mid = mid;
		this.merchantName = merchantName;
		this.address = address;
	}
	public MerchantBriefInfo() {
		
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public String getMerchantName() {
		return merchantName;
	}
	public void setMerchantName(String merchantName) {
		this.merchantName = merchantName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Double getStartLv() {
		return startLv;
	}
	public void setStartLv(Double startLv) {
		this.startLv = startLv;
	}
	public Integer getCommentaryCount() {
		return commentaryCount;
	}
	public void setCommentaryCount(Integer commentaryCount) {
		this.commentaryCount = commentaryCount;
	}
	public Double getPerCapita() {
		return perCapita;
	}
	public void setPerCapita(Double perCapita) {
		this.perCapita = perCapita;
	}
	public Double getTasteScocer() {
		return tasteScocer;
	}
	public void setTasteScocer(Double tasteScocer) {
		this.tasteScocer = tasteScocer;
	}
	public Double getConditionScocer() {
		return conditionScocer;
	}
	public void setConditionScocer(Double conditionScocer) {
		this.conditionScocer = conditionScocer;
	}
	public Double getServiceScocer() {
		return serviceScocer;
	}
	public void setServiceScocer(Double serviceScocer) {
		this.serviceScocer = serviceScocer;
	}
	public Merchant getMerchant() {
		return merchant;
	}
	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}
	
}
