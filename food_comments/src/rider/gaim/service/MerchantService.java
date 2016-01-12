package rider.gaim.service;

import java.util.List;

import rider.gaim.entity.Merchant;
import rider.gaim.exception.ServException;

public interface MerchantService {
	  public void addMerchant(Merchant merchant) throws ServException;
	  public List<Merchant> getAllMerchant()throws ServException;
	  public Merchant getMerchantById(int id) throws ServException;
	  public Merchant getMerchantByMId(int mid) throws ServException;
}
