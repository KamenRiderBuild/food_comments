package rider.gaim.service.user.impl;

import rider.gaim.dao.BaseDAO;
import rider.gaim.entity.Information;
import rider.gaim.exception.ServException;
import rider.gaim.service.InformationService;

public class InformationServiceImpl implements InformationService{

	private BaseDAO<Information> baseDAO;

	public BaseDAO<Information> getBaseDAO() {
		return baseDAO;
	}

	public void setBaseDAO(BaseDAO<Information> baseDAO) {
		this.baseDAO = baseDAO;
	}

	@Override
	public void updateInformation(Information information) throws ServException {
		try {
			baseDAO.update(information);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("用户资料更新失败");
		}
	}

	@Override
	public Information findInformationById(int id) throws ServException {
		try {
			return baseDAO.get(Information.class, id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("用户资料查找失败");
		}
	}
}
