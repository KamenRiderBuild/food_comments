package rider.gaim.service;

import rider.gaim.entity.Business;
import rider.gaim.exception.ServException;

public interface BusinessService {
	public void saveBusiness(Business business)throws ServException;
	public void deleteBusiness(Business business)throws ServException;
	public void updateBusiness(Business business)throws ServException;
	public Business findBusinessByNameAndPass(String username, String userpass)throws ServException;
	public Business findBusinessByEmailAndPass(String userEmail, String userpass)throws ServException;
}
