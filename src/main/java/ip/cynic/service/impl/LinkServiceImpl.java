package ip.cynic.service.impl;

import ip.cynic.dao.LinkDao;
import ip.cynic.domain.Link;
import ip.cynic.service.LinkService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("linkService")
public class LinkServiceImpl implements LinkService {

	@Autowired
	private LinkDao linkDao;
	
	public List<Link> findAllLink() {
		return linkDao.findAllLink();
	}

	

}
