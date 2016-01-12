package rider.gaim.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import rider.gaim.entity.Commentary;
import rider.gaim.entity.Merchant;
import rider.gaim.entity.MerchantBriefInfo;
import rider.gaim.entity.User;
import rider.gaim.exception.ServException;
import rider.gaim.service.CommentaryService;
import rider.gaim.service.MerchantService;

public class MerchantAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private MerchantService merchantService;
	private CommentaryService commentaryService;
	
	private Merchant merchant;

	public String addMerchant(){
		try {
			User user = (User) session.get("loginUser");
			merchant.setUser(user);
			merchant.setUser_nick(user.getNick());
			merchantService.addMerchant(merchant);
		} catch (ServException e) {
			System.out.println(e.getMessage());
			return ERROR;
		}
		return "index";
	}
	private List<Merchant> merchants;
	public String getAllMerchant(){
		try {
			merchants = merchantService.getAllMerchant();
		} catch (ServException e) {
			System.out.println(e.getMessage());
			return ERROR;
		}
		return SUCCESS;
	}
	public String toReview(){
		try {
			String uri = ServletActionContext.getRequest().getRequestURI();
			uri = uri.substring(0,uri.lastIndexOf("/"));
			int mid = Integer.parseInt(uri.substring(uri.lastIndexOf("/")+1));
			briefInfo = merchantService.getMerchantByMId(mid).getBriefInfo();
		} catch (ServException e) {
			System.out.println(e.getMessage());
			return ERROR;
		}
		return SUCCESS;
	}
	private MerchantBriefInfo briefInfo;
	private List<Commentary> commentaries;
	public String getMerchantAndAllInfo(){
		try {
			merchant = merchantService.getMerchantByMId(merchant.getMid());
			briefInfo = merchant.getBriefInfo();
			
			setCommentaries(commentaryService.findCommentaryByPage(0, 10, merchant));
		} catch (ServException e) {
			System.out.println(e.getMessage());
			return ERROR;
		}
		return SUCCESS;
	}
	public MerchantService getMerchantService() {
		return merchantService;
	}

	public void setMerchantService(MerchantService merchantService) {
		this.merchantService = merchantService;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	public List<Merchant> getMerchants() {
		return merchants;
	}

	public void setMerchants(List<Merchant> merchants) {
		this.merchants = merchants;
	}
	public MerchantBriefInfo getBriefInfo() {
		return briefInfo;
	}
	public void setBriefInfo(MerchantBriefInfo briefInfo) {
		this.briefInfo = briefInfo;
	}
	public List<Commentary> getCommentaries() {
		return commentaries;
	}
	public void setCommentaries(List<Commentary> commentaries) {
		this.commentaries = commentaries;
	}
	public CommentaryService getCommentaryService() {
		return commentaryService;
	}
	public void setCommentaryService(CommentaryService commentaryService) {
		this.commentaryService = commentaryService;
	}
	
}
