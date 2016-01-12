package rider.gaim.service;

import rider.gaim.entity.Information;
import rider.gaim.exception.ServException;

public interface InformationService {
	 public void updateInformation(Information information )throws ServException;
	 public Information findInformationById(int id)throws ServException;
}

