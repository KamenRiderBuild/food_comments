package rider.gaim.action;

import java.util.List;

import rider.gaim.entity.MerchantBriefInfo;
import rider.gaim.exception.ServException;
import rider.gaim.service.MerchantBriefInfoService;

public class MerchantBriefInfoAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private MerchantBriefInfoService briefInfoService;


	
	private List<MerchantBriefInfo> briefInfos;
	public String getAllBridfInfo(){
		try {
			briefInfos = briefInfoService.getAllBriefInfos();
		} catch (ServException e) {
			System.out.println(e.getMessage());
		}
		return SUCCESS;
	}
	public MerchantBriefInfoService getBriefInfoService() {
		return briefInfoService;
	}
	public void setBriefInfoService(MerchantBriefInfoService briefInfoService) {
		this.briefInfoService = briefInfoService;
	}
	public List<MerchantBriefInfo> getBriefInfos() {
		return briefInfos;
	}
	public void setBriefInfos(List<MerchantBriefInfo> briefInfos) {
		this.briefInfos = briefInfos;
	}
	


	
}
