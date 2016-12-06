package ip.cynic.dao;

import ip.cynic.domain.User;

public interface UserDao {

	User findUserByName(String username);

	User findUser();
	
}
