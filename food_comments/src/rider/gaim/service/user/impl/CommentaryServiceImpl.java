package rider.gaim.service.user.impl;

import java.util.List;

import rider.gaim.dao.BaseDAO;
import rider.gaim.entity.Commentary;
import rider.gaim.entity.Merchant;
import rider.gaim.entity.MerchantBriefInfo;
import rider.gaim.entity.User;
import rider.gaim.exception.ServException;
import rider.gaim.service.CommentaryService;
import rider.gaim.service.MerchantBriefInfoService;

public class CommentaryServiceImpl implements CommentaryService{

	private BaseDAO<Commentary> baseDAO;
	private MerchantBriefInfoService briefInfoService;

	public BaseDAO<Commentary> getBaseDAO() {
		return baseDAO;
	}

	public void setBaseDAO(BaseDAO<Commentary> baseDAO) {
		this.baseDAO = baseDAO;
	}
	
	@Override
	public void addCommentary(Commentary commentary) throws ServException {
		try {
			commentary.setUser_nick(commentary.getUser().getNick());
			
			Integer layer = commentary.getLayer();
			if(layer==null || layer<=0){
				layer = baseDAO.count("select max(c.layer) from Commentary c where c.merchant = ? ",new Object[]{commentary.getMerchant()});
				if(layer==null)
					layer=0;
				commentary.setLayer(layer+1);
				commentary.setSerialNumber(0);
			}else{
				commentary.setSerialNumber(baseDAO.count("select max(c.serialNumber) from Commentary c where c.merchant = ? and c.layer=?",new Object[]{commentary.getMerchant(),layer})+1);
			}
			
			MerchantBriefInfo briefInfo = briefInfoService.getBriefInfo(commentary.getMerchant());
			int startLv = commentary.getStartLv();
			double perCapita = commentary.getPerCapita();
			int tastScocer = commentary.getTasteScocer();
			int conditionScocer = commentary.getConditionScocer();
			int serviceScocer = commentary.getServiceScocer();
			
			if(briefInfo.getCommentaryCount()>0){
				briefInfo.setStartLv((briefInfo.getStartLv()+startLv)/2.0);
				if(perCapita>0)
					briefInfo.setPerCapita((briefInfo.getPerCapita()+perCapita)/2.0);
				briefInfo.setTasteScocer((briefInfo.getTasteScocer()+tastScocer)/2.0);
				briefInfo.setConditionScocer((briefInfo.getConditionScocer()+conditionScocer)/2.0);
				briefInfo.setServiceScocer((briefInfo.getServiceScocer()+serviceScocer)/2.0);
				briefInfo.setCommentaryCount(briefInfo.getCommentaryCount()+1);
			} else {
				briefInfo.setStartLv((double) startLv);
				briefInfo.setPerCapita(perCapita);
				briefInfo.setTasteScocer((double) tastScocer);
				briefInfo.setConditionScocer((double) conditionScocer);
				briefInfo.setServiceScocer((double) serviceScocer);
				briefInfo.setCommentaryCount(1);
			}
			briefInfoService.updateBrieInfo(briefInfo);
			baseDAO.save(commentary);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("评论失败");
		}
	}

	@Override
	public void deleteCommentary(Commentary commentary) throws ServException {
		try {
			baseDAO.delete(commentary);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("删除失败");
		}
	}

	@Override
	public List<Commentary> findCommentaryByPage(Integer pageNum,
			Integer numPerPage) throws ServException {
		
		return baseDAO.find("from Commentary co", new Object[]{}, pageNum, numPerPage);
	}

	@Override
	public List<Commentary> findCommentaryByPage(Integer pageNum,
			Integer numPerPage, Merchant merchant) throws ServException {
		return baseDAO.find("from Commentary co where co.merchant = ? order by co.layer asc , co.serialNumber asc ", new Object[]{merchant}, pageNum, numPerPage);
	}

	@Override
	public List<Commentary> findCommentaryByPage(Integer pageNum,
			Integer numPerPage, User user) throws ServException {
		return baseDAO.find("from Commentary co where co.user=?", new Object[]{user}, pageNum, numPerPage);
	}

	public MerchantBriefInfoService getBriefInfoService() {
		return briefInfoService;
	}

	public void setBriefInfoService(MerchantBriefInfoService briefInfoService) {
		this.briefInfoService = briefInfoService;
	}
	
}
