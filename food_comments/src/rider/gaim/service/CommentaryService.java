package rider.gaim.service;

import java.util.List;

import rider.gaim.entity.Commentary;
import rider.gaim.entity.Merchant;
import rider.gaim.entity.User;
import rider.gaim.exception.ServException;

public interface CommentaryService {
	public void addCommentary(Commentary commentary)throws ServException;
	public void deleteCommentary(Commentary commentary)throws ServException;
	public List<Commentary> findCommentaryByPage(Integer pageNum,Integer numPerPage)throws ServException;
	public List<Commentary> findCommentaryByPage(Integer pageNum,Integer numPerPage,Merchant merchant)throws ServException;
	public List<Commentary> findCommentaryByPage(Integer pageNum,Integer numPerPage, User user)throws ServException;
}
