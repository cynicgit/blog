package ip.cynic.service;

import ip.cynic.domain.User;

public interface UserService {

	User findUserByName(String username);

	User findUser();
}
