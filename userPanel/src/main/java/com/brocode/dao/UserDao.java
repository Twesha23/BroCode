package com.brocode.dao;

import java.util.List;

import com.brocode.model.User;
import com.brocode.dao.GenericDAO;

public interface UserDao extends GenericDAO<User> {
	User loginCheck(User user);

	int emailCheck(User user);

	User forgotpassword(User user);
}