package rider.gaim.service.user.impl;

import rider.gaim.dao.BaseDAO;
import rider.gaim.entity.Business;
import rider.gaim.exception.ServException;
import rider.gaim.service.BusinessService;

public class BusinessServiceImpl implements BusinessService{

	private BaseDAO<Business> baseDAO;
	@Override
	public void saveBusiness(Business business) throws ServException {
		try {
			baseDAO.save(business);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("商家添加失败");
		}
	}

	@Override
	public void deleteBusiness(Business business) throws ServException {
		try {
			baseDAO.delete(business);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("商家删除失败");
		}
	}

	@Override
	public void updateBusiness(Business business) throws ServException {
		try {
			baseDAO.update(business);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("商家更新失败");
		}
	}

	@Override
	public Business findBusinessByNameAndPass(String username, String userpass)
			throws ServException {
		try {
			return baseDAO.get(" from Business b where b.userName = ? and b.userPass = ? ",new Object[] { username, userpass });
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("用户查找失败");
		}
	}

	@Override
	public Business findBusinessByEmailAndPass(String userEmail, String userpass)
			throws ServException {
		try {
			return baseDAO.get(" from Business b where b.userEmail = ? and b.userPass = ? ",new Object[] { userEmail, userpass });
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("用户查找失败");
		}
	}

	public BaseDAO<Business> getBaseDAO() {
		return baseDAO;
	}

	public void setBaseDAO(BaseDAO<Business> baseDAO) {
		this.baseDAO = baseDAO;
	}

}
