package rider.gaim.service.user.impl;

import java.util.List;

import rider.gaim.dao.BaseDAO;
import rider.gaim.entity.Merchant;
import rider.gaim.entity.MerchantBriefInfo;
import rider.gaim.exception.ServException;
import rider.gaim.service.MerchantService;

public class MerchantServiceImpl implements MerchantService {

	private BaseDAO<Merchant> baseDAO;
	
	@Override
	public void addMerchant(Merchant merchant) throws ServException {
		try {
			Integer mid = baseDAO.count("select max(m.mid) from Merchant m ");
			if(mid== null || mid <=0 )
				mid= 2000;
			merchant.setMid(mid+1);
			merchant.setBriefInfo(new MerchantBriefInfo(merchant.getMid(), merchant.getName(), merchant.getAddress()));
			baseDAO.save(merchant);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("商户添加失败！");
		}
	}

	public BaseDAO<Merchant> getBaseDAO() {
		return baseDAO;
	}

	public void setBaseDAO(BaseDAO<Merchant> baseDAO) {
		this.baseDAO = baseDAO;
	}

	@Override
	public Merchant getMerchantById(int id) throws ServException {
		try {
			return baseDAO.get(Merchant.class, id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("商户获取失败！");
		}
	}

	@Override
	public Merchant getMerchantByMId(int mid) throws ServException {
		try {
			return baseDAO.get("from Merchant m  where m.mid=?", new Object[]{mid});
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("商户获取失败！");
		}
	}

	@Override
	public List<Merchant> getAllMerchant() throws ServException {
		try {
			return baseDAO.find("from Merchant m", new Object[] {});
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("商户获取失败！");
		}
	}
}
