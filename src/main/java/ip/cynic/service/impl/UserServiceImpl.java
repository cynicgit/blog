package ip.cynic.service.impl;

import ip.cynic.dao.UserDao;
import ip.cynic.domain.User;
import ip.cynic.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public User findUserByName(String username) {
		return userDao.findUserByName(username);
	}

	@Override
	public User findUser() {
		return userDao.findUser();
	}



}
