package rider.gaim.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import rider.gaim.entity.Business;
import rider.gaim.entity.Comment;
import rider.gaim.entity.Commentary;
import rider.gaim.entity.Merchant;
import rider.gaim.entity.MerchantBriefInfo;
import rider.gaim.entity.User;
import rider.gaim.exception.ServException;
import rider.gaim.service.CommentaryService;
import rider.gaim.service.MerchantService;

public class CommentaryAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private CommentaryService commentaryService;
	private MerchantService merchantService;
	private Commentary commentary;
	private Merchant merchant;
	private MerchantBriefInfo briefInfo;
	
	public String addCommentary(){
		try {
			User u = (User) session.get("loginUser");
			if(u!=null){
				merchant = merchantService.getMerchantByMId(merchant.getMid());
				commentary.setUser(u);
				commentary.setMerchant(merchant);
				commentaryService.addCommentary(commentary);
			}
			//merchant.setMid(merchant.getMid());
			return SUCCESS;
		} catch (ServException e) {
			System.out.println(e.getMessage());
		}
		return ERROR;
	}	
	
	private int pageNum, numPerPage;
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getNumPerPage() {
		return numPerPage;
	}
	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}

	private List<Commentary> commentaries;
	
	public String findCommentary(){
		try {
			merchant = merchantService.getMerchantByMId(merchant.getMid());
			commentaries = commentaryService.findCommentaryByPage(pageNum, numPerPage, merchant);
		} catch (ServException e) {
			System.out.println(e.getMessage());
		}
		return SUCCESS;
	}
	private Comment comment;
	public String findBussinessCommentary(){
		try {
			Business b = (Business) session.get("loginBusiness");
			//merchant = b.getMerchant();
			merchant = merchantService.getMerchantByMId(b.getMid());
			b.setMerchant(merchant);
			briefInfo = merchant.getBriefInfo();
			commentaries = commentaryService.findCommentaryByPage(pageNum, numPerPage, merchant);
			comment = new Comment();
			for(Commentary c : commentaries){
				switch(c.getStartLv()){
					case 5:comment.setFive(comment.getFive()+1);break;
					case 4:comment.setFour(comment.getFour()+1);break;
					case 3:comment.setThree(comment.getThree()+1);break;
					case 2:comment.setTwo(comment.getTwo()+1);break;
					case 1:comment.setOne(comment.getOne()+1);break;
				}
			}
		} catch (ServException e) {
			System.out.println(e.getMessage());
		}
		return SUCCESS;
	}
	
	public CommentaryService getCommentaryService() {
		return commentaryService;
	}
	public void setCommentaryService(CommentaryService commentaryService) {
		this.commentaryService = commentaryService;
	}
	public Commentary getCommentary() {
		return commentary;
	}
	public void setCommentary(Commentary commentary) {
		this.commentary = commentary;
	}	
	public Merchant getMerchant() {
		return merchant;
	}
	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}
	public MerchantService getMerchantService() {
		return merchantService;
	}
	public void setMerchantService(MerchantService merchantService) {
		this.merchantService = merchantService;
	}
	public List<Commentary> getCommentaries() {
		return commentaries;
	}
	public void setCommentaries(List<Commentary> commentaries) {
		this.commentaries = commentaries;
	}
	public MerchantBriefInfo getBriefInfo() {
		return briefInfo;
	}
	public void setBriefInfo(MerchantBriefInfo briefInfo) {
		this.briefInfo = briefInfo;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
}
