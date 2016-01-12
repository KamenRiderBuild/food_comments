package rider.gaim.service;

import java.util.List;

import rider.gaim.entity.Merchant;
import rider.gaim.entity.MerchantBriefInfo;
import rider.gaim.exception.ServException;

public interface MerchantBriefInfoService {
	public void updateBrieInfo(MerchantBriefInfo briefInfo)throws ServException;
	
	public MerchantBriefInfo getBriefInfo(int id)throws ServException;
	
	public MerchantBriefInfo getBriefInfo(Merchant merchant)throws ServException;
	
	public List<MerchantBriefInfo> getAllBriefInfos()throws ServException;
}
