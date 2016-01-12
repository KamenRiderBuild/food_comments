package rider.gaim.service.user.impl;

import java.util.List;

import rider.gaim.dao.BaseDAO;
import rider.gaim.entity.Merchant;
import rider.gaim.entity.MerchantBriefInfo;
import rider.gaim.exception.ServException;
import rider.gaim.service.MerchantBriefInfoService;
import rider.gaim.service.MerchantService;

public class MerchantBriefInfoServiceImpl implements MerchantBriefInfoService {

	private BaseDAO<MerchantBriefInfo> baseDAO;
	private MerchantService merchantService;
	
	public BaseDAO<MerchantBriefInfo> getBaseDAO() {
		return baseDAO;
	}

	public void setBaseDAO(BaseDAO<MerchantBriefInfo> baseDAO) {
		this.baseDAO = baseDAO;
	}
	
	@Override
	public void updateBrieInfo(MerchantBriefInfo briefInfo)
			throws ServException {
		try {
			baseDAO.update(briefInfo);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("更新商户简介失败");
		}
	}

	@Override
	public MerchantBriefInfo getBriefInfo(int id) throws ServException {
		try {
			return baseDAO.get(MerchantBriefInfo.class, id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("获取商户简介失败");
		}
	}

	@Override
	public MerchantBriefInfo getBriefInfo(Merchant merchant)
			throws ServException {
		try {
			return merchantService.getMerchantById(merchant.getId()).getBriefInfo();
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("获取商户简介失败");
		}
	}

	public MerchantService getMerchantService() {
		return merchantService;
	}

	public void setMerchantService(MerchantService merchantService) {
		this.merchantService = merchantService;
	}

	@Override
	public List<MerchantBriefInfo> getAllBriefInfos() throws ServException {
		try {
			return baseDAO.find("from MerchantBriefInfo mb", new Object[] {});
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("商户简介获取失败！");
		}
	}

}
